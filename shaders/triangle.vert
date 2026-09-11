#version 450

layout(location = 0) in vec2 inPosition;
layout(location = 1) in vec3 inColor;

layout(set = 0, binding = 0) uniform Params {
  mat4 mvp;
  uint costLoops;
  uint stripeWidth;
};

layout(location = 0) out vec3 color;

void main() {
  gl_Position = mvp * vec4(inPosition, 0.0, 1.0);
  color = inColor;
}
