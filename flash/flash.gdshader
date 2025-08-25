shader_type canvas_item;

// material.set_shader_paramter("flash_intensity", 1)

uniform vec4 flash_color : source_color = vec4(1.0, 1.0, 1.0, 1.0);
uniform float flash_intensity = 0;

void fragment() {
    vec4 texture_color = texture(TEXTURE, UV);
    COLOR = vec4(mix(texture_color.rgb, flash_color.rgb, flash_intensity), texture_color.a);
}
