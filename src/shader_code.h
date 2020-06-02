/* File generated with Shader Minifier 1.1.1
 * http://www.ctrl-alt-test.fr
 */
#ifndef SHADER_CODE_H_
# define SHADER_CODE_H_
# define U_TEX0 "v"

const char fragment_glsl[] = ""
 "#version 130\n"
 "uniform sampler2D v;"
 "vec2 p(vec2 w)"
 "{"
   "return(texture(v,w+vec2(.39233,.292205)/256.).yw+texture(v,w+vec2(-.75587,-.51016)/256.).yw+texture(v,w+vec2(-.517127,-.478699)/256.).yw+texture(v,w+vec2(.2084,-.86519)/256.).yw+texture(v,w+vec2(-.074962,-.982722)/256.).yw+texture(v,w+vec2(-.37341,-.497675)/256.).yw+texture(v,w+vec2(.792533,.576166)/256.).yw+texture(v,w+vec2(.095819,-.920571)/256.).yw)*.5;"
 "}"
 "void main()"
 "{"
   "float w=gl_TexCoord[0].x;"
   "vec2 v=(gl_FragCoord.xy/vec2(1920.,1080.)-vec2(.5))*vec2(16./9.,1.)*(.72-.25*smoothstep(30.,50.,w)+.1*smoothstep(50.,55.,w)-.2*smoothstep(60.,80.,w)+.4*smoothstep(115.,145.,w))+vec2(.5*smoothstep(23.,32.,w)+.1*smoothstep(45.,55.,w)-.1*smoothstep(60.,80.,w)-.4*smoothstep(100.,148.,w)+.25,.5),x=vec2(1./256.,0.),s=p(v),m=p(v+x),l=p(v+x.yx);"
   "vec3 r=normalize(vec3(v*2.-1.,-2.)),y=normalize(vec3(1.,1.,32.*s.x)*cross(vec3(x,m.x-s.x),vec3(x.yx,l.x-s.x))),a=normalize(vec3(1.,1.,96.*s.y)*cross(vec3(x,m.y-s.y),vec3(x.yx,l.y-s.y))),f=reflect(r,a);"
   "gl_FragColor=vec4(sqrt(mix(mix(mix(.96,1.,1.-smoothstep(.2,.7,abs(fract(16.*dot(v,vec2(1.)))-.5)))*mix(.96,1.,smoothstep(.2,.7,abs(fract(16.*dot(v,vec2(1.,-1.)))-.5)))*sqrt(1.-length(v-vec2(.5)))*(1.-smoothstep(.05,.3,s.x)),pow(clamp(.5+.5*dot(reflect(r,y),normalize(vec3(0.,0.,1.))),0.,1.),4.)+.5*pow(1.-clamp(y.z,0.,1.),2.)+.1,smoothstep(.2-.64*min(1.,length(vec2(m.x-s.x,l.x-s.x))),.2,s.x))*(1.-smoothstep(.02,.35,s.y)),.7*pow(1.-clamp(a.z,0.,1.),2.)+.7*smoothstep(0.,.2,.4-abs(f.x/f.z))*smoothstep(0.,.2,.4-abs(f.y/f.z-.3)),smoothstep(.2-.64*min(1.,length(vec2(m.y-s.y,l.y-s.y))),.2,s.y))*(smoothstep(-4.,0.,w)-smoothstep(145.,149.,w))));"
 "}";

#endif // SHADER_CODE_H_
