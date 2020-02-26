#version 330 core
out vec4 FragColor;
  
uniform vec3 objectColor;
uniform vec3 lightColor;
uniform vec3 lightPos;

in vec3 Normal;
in vec3 FragPos;

void main()
{
    // 归一化光源方向和法线
    vec3 norm = normalize(Normal);
    vec3 lightDir = normalize(lightPos - FragPos);
    // 点乘，得到漫反射的光线强度（点乘是求2向量夹角的cos值，夹角越小光线越强，cos 0°时，点乘结果为1，向量垂直时，结果为0）
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = diff * lightColor;
    // 慢反射的光乘以物体本身的颜色，得到最终颜色
    vec3 result = diffuse * objectColor;
    FragColor = vec4(result, 1.0);
}
