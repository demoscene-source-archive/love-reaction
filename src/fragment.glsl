#version 130
uniform sampler2D tex0;

vec2 field(vec2 p)
{
    return (
        texture(tex0, p + vec2(.392330, .292205) / 256.).ga +
        texture(tex0, p + vec2(-.755870, -.510160) / 256.).ga +
        texture(tex0, p + vec2(-.517127, -.478699) / 256.).ga +
        texture(tex0, p + vec2(.208400, -.865190) / 256.).ga +
        texture(tex0, p + vec2(-.074962, -.982722) / 256.).ga +
        texture(tex0, p + vec2(-.373410, -.497675) / 256.).ga +
        texture(tex0, p + vec2(.792533, .576166) / 256.).ga +
        texture(tex0, p + vec2(.095819, -.920571) / 256.).ga
    ) * .5;
}

void main()
{
    float time = gl_TexCoord[0].x;

    vec2 coord=(gl_FragCoord.xy/vec2(1920.,1080.)-vec2(.5))*vec2(16./9.,1.)*
        (.72-.25*smoothstep(30.,50.,time)+.1*smoothstep(50.,55.,time)-.2*smoothstep(60.,80.,time)+.4*smoothstep(115.,145.,time))+vec2(
        
        .5*smoothstep(23.,32.,time)+.1*smoothstep(45.,55.,time)-.1*smoothstep(60.,80.,time)-.4*smoothstep(100.,148.,time)+.25,
        
        .5);
        
    vec2 o=vec2(1./256.,0.), vp=field(coord), v0p=field(coord+o), v1p=field(coord+o.yx);
    
    vec3 e=normalize(vec3(coord*2.-1.,-2.));
    vec3 na=normalize(vec3(1.,1.,32.*vp.x)*cross(vec3(o,v0p.x-vp.x),vec3(o.yx,v1p.x-vp.x)));
    vec3 nb=normalize(vec3(1.,1.,96.*vp.y)*cross(vec3(o,v0p.y-vp.y),vec3(o.yx,v1p.y-vp.y)));
    vec3 r=reflect(e,nb);
                
    gl_FragColor=vec4(sqrt(mix(mix(mix(.96,1.,1.-smoothstep(.2,.7,abs(fract(16.*dot(coord,vec2(1.)))-.5)))*
                mix(.96,1.,smoothstep(.2,.7,abs(fract(16.*dot(coord,vec2(1.,-1.)))-.5)))*sqrt(1.-length(coord-vec2(.5)))*
                (1.-smoothstep(.05,.3,vp.x)),pow(clamp(.5+.5*dot(reflect(e,na),normalize(vec3(0.,0.,1.))),0.,1.),4.)+.5*pow(1.-clamp(na.z,0.,1.),2.)+.1,smoothstep(.2-.64*min(1.,length(vec2(v0p.x-vp.x,v1p.x-vp.x))),.2,vp.x))*
                (1.-smoothstep(.02,.35,vp.y)),.7*pow(1.-clamp(nb.z,0.,1.),2.)+.7*smoothstep(.0,.2,.4-abs(r.x/r.z))*smoothstep(.0,.2,.4-abs(r.y/r.z-.3)),smoothstep(.2-.64*min(1.,length(vec2(v0p.y-vp.y,v1p.y-vp.y))),.2,vp.y))*(smoothstep(-4.,0.,time)-smoothstep(145.,149.,time))));
}

