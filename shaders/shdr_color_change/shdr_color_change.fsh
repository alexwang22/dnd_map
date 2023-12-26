//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColor;
uniform vec4 u_color;

void main() {
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	if (texColor.a > 0.0 && texColor.b < 1.0) {
		gl_FragColor = v_vColor * texColor;
	}
	else {
		gl_FragColor = vec4(u_color.rgb, texColor.a);
	}
}
