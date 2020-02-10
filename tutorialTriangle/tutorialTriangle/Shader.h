//
//  Shader.h
//  tutorialTriangle
//
//  Created by yongbaowang(王永宝) on 2020/2/10.
//  Copyright © 2020 yongbaowang(王永宝). All rights reserved.
//

#ifndef Shader_h
#define Shader_h

#include <glad/glad.h>; // 包含glad来获取所有的必须OpenGL头文件

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

class Shader
{
public:
    // 程序ID
    unsigned int ID;

    // 构造器读取并构建着色器
    Shader(const GLchar* vertexPath, const GLchar* fragmentPath);
    // 使用/激活程序
    void use();
    // uniform工具函数
    void setBool(const std::string &name, bool value) const;
    void setInt(const std::string &name, int value) const;
    void setFloat(const std::string &name, float value) const;
};

#endif /* Shader_h */
