
#pragma warning( disable : 4730 )
#pragma warning( disable : 4799 )

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#include <mmsystem.h>
#include <mmreg.h>
#include "../config.h"
#include <GL/gl.h>
#include "../config.h"
#include "../glext.h"
#include "../shader_code.h"
#include <mmintrin.h>
#include <math.h>
#include "../clinkster.h"



static const PIXELFORMATDESCRIPTOR pfd = {
    sizeof(PIXELFORMATDESCRIPTOR), 1, PFD_DRAW_TO_WINDOW|PFD_SUPPORT_OPENGL|PFD_DOUBLEBUFFER, PFD_TYPE_RGBA,
    32, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 32, 0, 0, PFD_MAIN_PLANE, 0, 0, 0, 0 };

static DEVMODE screenSettings = { {0},
    #if _MSC_VER < 1400
    0,0,148,0,0x001c0000,{0},0,0,0,0,0,0,0,0,0,{0},0,32,XRES,YRES,0,0,      // Visual C++ 6.0
    #else
    0,0,156,0,0x001c0000,{0},0,0,0,0,0,{0},0,32,XRES,YRES,{0}, 0,           // Visuatl Studio 2005
    #endif
    #if(WINVER >= 0x0400)
    0,0,0,0,0,0,
    #if (WINVER >= 0x0500) || (_WIN32_WINNT >= 0x0400)
    0,0
    #endif
    #endif
    };

#ifdef __cplusplus
extern "C" 
{
#endif
int  _fltused = 0;
#ifdef __cplusplus
}
#endif


#define BITS 14

typedef signed short int CellValue;

static GLuint   g_shader_program;
static CellValue g_grid_buffer0[256*256*4];
static CellValue g_grid_buffer1[256*256*4];
static CellValue* g_grid_buffers[2]={g_grid_buffer0,g_grid_buffer1};
static long frame_count=-1000;

#define MAX(a,b) ((a>b)?(a):(b))

void entrypoint( void )
{
    // full screen
    if( ChangeDisplaySettings(&screenSettings,CDS_FULLSCREEN)!=DISP_CHANGE_SUCCESSFUL) return;
    ShowCursor( 0 );
    // create window
    HWND hWnd = CreateWindow( "static",0,WS_POPUP|WS_VISIBLE,0,0,XRES,YRES,0,0,0,0);
    if( !hWnd ) return;
    HDC hDC = GetDC(hWnd);
    // initalize opengl
    if( !SetPixelFormat(hDC,ChoosePixelFormat(hDC,&pfd),&pfd) ) return;
    wglMakeCurrent(hDC,wglCreateContext(hDC));

    static const char *const fs = fragment_glsl;

	g_shader_program = ((PFNGLCREATESHADERPROGRAMVPROC)wglGetProcAddress("glCreateShaderProgramv"))(GL_FRAGMENT_SHADER, 1, &fs);

	__asm {
		mov ecx, 65536
cleargrid:
		dec ecx
		mov [ecx*4+g_grid_buffer0], 0
		mov [ecx*4+g_grid_buffer1], 0
		loop cleargrid
	}

	Clinkster_GenerateMusic();

	const __m64 delta=_mm_set1_pi16(((1L<<BITS)*long(4))/long(5));

    // play intro

	Clinkster_StartMusic();
    do 
    {

	//	long ltime = (long)(Clinkster_GetPosition());
		long ltime = (long)(Clinkster_GetPosition() / Clinkster_TicksPerSecond * 1000.0f);

		//glLoadIdentity();

		glBindTexture(GL_TEXTURE_2D, 1);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

		//const float time = float(ltime) / 1000.0f;

		((PFNGLUSEPROGRAMPROC)wglGetProcAddress("glUseProgram"))(g_shader_program);
		((PFNGLUNIFORM1IPROC)wglGetProcAddress("glUniform1i"))(((PFNGLGETUNIFORMLOCATIONPROC)wglGetProcAddress("glGetUniformLocation"))(g_shader_program,U_TEX0),0);

		glTexCoord1f(float(frame_count)*4.f/1000.f);
		glRects(-1,-1,+1,+1);

		{
			static unsigned long int pst=0,pstc=0;
			CellValue *src,*dest=0;
			if(pst==0)
			{
				pst=ltime;
				pstc=pst;
			}
			pstc+=ltime-pst;
			pst=ltime;
			int count=0;
			for(;pstc>=4&&count<16;pstc-=4,frame_count++,count++)
			{
				CellValue Ka, Fa, Kb, Fb;

				Ka=(CellValue)(0.063*(1<<BITS));
				Fa=(CellValue)(0.032*(1<<BITS));
				Kb=(CellValue)(0.06*(1<<BITS));
				Fb=(CellValue)(0.03*(1<<BITS));

				if(frame_count>14000)
				{
					Kb=(CellValue)(0.062*(1<<BITS));
					Fb=(CellValue)(0.04*(1<<BITS));
				}

				if(frame_count>20000)
				{
					Ka=(CellValue)(0.0614*(1<<BITS));
					Fa=(CellValue)(0.0224*(1<<BITS));
				}

				if(frame_count>28000)
				{
					Kb=(CellValue)(0.06*(1<<BITS));
					Fb=(CellValue)(0.05*(1<<BITS));
				}

				if(frame_count>28000)
				{
					Ka=(CellValue)(0.06*(1<<BITS));
					Fa=(CellValue)(0.05*(1<<BITS));
				}

				if(frame_count>38000)
				{
					goto endit;
				}

				if(frame_count>=0)
				{
				src=g_grid_buffers[0^(frame_count&1)];
				dest=g_grid_buffers[1^(frame_count&1)];
				for(int y=1;y<256-1;++y)
					for(int x=1;x<256-1;++x)
					{
						CellValue* uv=src+(x+y*256)*4;/*
						CellValue* uv0=src+(x+y*256+1)*4;
						CellValue* uv1=src+(x+y*256-1)*4;
						CellValue* uv2=src+(x+y*256+256)*4;
						CellValue* uv3=src+(x+y*256-256)*4;
						*/
						union {
							__m64 mlapl;
							CellValue lapl[4];
						};

						__m64 muv=*(__m64*)(src+(x+y*256)*4);//_mm_setr_pi16(uv[0], uv[1], uv[2], uv[3]);
						__m64 muv0=*(__m64*)(src+(x+y*256+1)*4);//_mm_setr_pi16(uv0[0], uv0[1], uv0[2], uv0[3]);
						__m64 muv1=*(__m64*)(src+(x+y*256-1)*4);//_mm_setr_pi16(uv1[0], uv1[1], uv1[2], uv1[3]);
						__m64 muv2=*(__m64*)(src+(x+y*256+256)*4);//_mm_setr_pi16(uv2[0], uv2[1], uv2[2], uv2[3]);
						__m64 muv3=*(__m64*)(src+(x+y*256-256)*4);//_mm_setr_pi16(uv3[0], uv3[1], uv3[2], uv3[3]);

						__m64 m0 = _mm_add_pi16(_mm_add_pi16(muv1, muv0), _mm_add_pi16(muv3, muv2));
						mlapl = _mm_srai_pi16( _mm_sub_pi16( m0, _mm_slli_pi16(muv, 2)), 2);

						const CellValue ra=( ( (uv[0] * uv[1]) >> BITS )*uv[1]) >> BITS;
						const CellValue rb=( ( (uv[2] * uv[3]) >> BITS )*uv[3]) >> BITS;

						CellValue Ka2=Ka+CellValue((frame_count<25000)?uv[3]:(uv[3]/8));
						CellValue Fa2=Fa;

						CellValue Kb2=Kb+CellValue((frame_count<25000)?uv[1]:(uv[1]/8));
						CellValue Fb2=Fb;

						if(frame_count<25000)
						{
							if(x>200)
								Fb2=0;

							if(frame_count>15000 && x>200-(frame_count-15000)/100)
								Fb2=0;
						}

						if(frame_count>30000 && ((x-128)*(x-128)+(y-128)*(y-128))>8000)
							Fa2=Fb2=0;

						// Gray-Scott Reaction-Diffusion Equation

						const CellValue dUa=lapl[0] - ra + ((Fa2*((1L<<BITS)-uv[0])) >> BITS);
						const CellValue dVa=(lapl[1]>>1) + ra - (((Fa2+Ka2)*uv[1]) >> BITS);

						const CellValue dUb=lapl[2] - rb + ((Fb2*((1L<<BITS)-uv[2])) >> BITS);
						const CellValue dVb=(lapl[3]>>1) + rb - (((Fb2+Kb2)*uv[3]) >> BITS);

						const __m64 del0=_mm_setr_pi16(dUa,dUa,dVa,dVa);
						const __m64 del1=_mm_setr_pi16(dUb,dUb,dVb,dVb);

						CellValue* dd=dest+(x+y*256)*4;

						*(__m64*)dd = _mm_add_pi16(muv, _mm_packs_pi32(_mm_srai_pi32(_mm_madd_pi16(del0, delta), 15), _mm_srai_pi32(_mm_madd_pi16(del1, delta), 15)) );

						if(labs(frame_count-8000)<40 && labs(x-128-64) < 2 && labs(y-128) < 2)
							dest[(x+y*256)*4+1]+=1<<(BITS-5);

						if(frame_count<80 && labs(x-64) < 2 && labs(y-128) < 2)
							dest[(x+y*256)*4+3]+=1<<(BITS-5);
					}

				}
				else
					dest=g_grid_buffers[0];

			}

			if(dest)
				glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA16,256,256,0,GL_RGBA,GL_UNSIGNED_SHORT,dest);
		}

		glFinish();

        wglSwapLayerBuffers( hDC, WGL_SWAP_MAIN_PLANE ); //SwapBuffers( hDC );

		PeekMessageA(0, 0, 0, 0, PM_REMOVE); // <-- "fake" message handling.

    }while ( !GetAsyncKeyState(VK_ESCAPE) );


	endit:
    ExitProcess(0);
}
