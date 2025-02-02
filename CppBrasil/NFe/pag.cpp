/*
Copyright 2022 João Elson
jetmorju@gmail.com

Web-site: https://cppbrasil.com.br

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/


#include "pag.h"

Pag::Pag(): detPag(new Container<DetPag>), m_vTroco(0.0)
{
}

Pag::~Pag()
{
}

void Pag::clear()
{
    this->m_vTroco = 0.0;

    this->detPag->clear();
}

double Pag::get_vTroco() const
{
    return this->m_vTroco;
}

void Pag::set_vTroco(const double &vTroco)
{
    this->m_vTroco = vTroco;
}
