#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform vec3 viewPos;

out vec3 Normal;
out vec3 FragPos;

void main()
{
    gl_Position = projection * view * model * vec4(aPos, 1.0);
    FragPos = vec3(model * vec4(aPos, 1.0)); // 输出片段的世界坐标到FragmentShader
    // 通过法线矩阵计算法线位置，先取逆再转置，最好在外部算好用uniform传入
    Normal = mat3(transpose(inverse(model))) * aNormal;
}
