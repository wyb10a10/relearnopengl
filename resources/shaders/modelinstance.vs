#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 2) in vec2 aTexCoords;
layout (location = 3) in mat4 aInstanceMatrix;

out vec2 TexCoords;

uniform mat4 projection;
uniform mat4 view;
uniform mat4 rotateMat[3];

void main()
{
    TexCoords = aTexCoords;
    gl_Position = projection * view * rotateMat[gl_InstanceID % 3] * aInstanceMatrix * vec4(aPos, 1.0f);
}
