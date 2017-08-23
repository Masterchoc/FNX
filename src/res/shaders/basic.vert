precision highp float;
attribute highp vec3 position;
varying vec4 color;

uniform mat4 transform;

void main()
{
    color = vec4(clamp(position, 0.0, 1.0), 1.0);
    gl_Position = transform * vec4(0.25 * position, 1.0);
}