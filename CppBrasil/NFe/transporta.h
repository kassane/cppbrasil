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


#ifndef TRANSPORTA_H
#define TRANSPORTA_H

#include <QString>
#include <CppBrasil/cppbrasil_global.h>

class CPPBRASIL_EXPORT Transporta
{
public:
    Transporta();
    ~Transporta();
    void clear();
    QString get_CNPJ() const;
    void set_CNPJ(const QString &CNPJ);
    QString get_CPF() const;
    void set_CPF(const QString &CPF);
    QString get_xNome() const;
    void set_xNome(const QString &xNome);
    QString get_IE() const;
    void set_IE(const QString &IE);
    QString get_xEnder() const;
    void set_xEnder(const QString &xEnder);
    QString get_xMun() const;
    void set_xMun(const QString &xMun);
    QString get_UF() const;
    void set_UF(const QString &UF);

private:
    QString m_CNPJ;
    QString m_CPF;
    QString m_xNome;
    QString m_IE;
    QString m_xEnder;
    QString m_xMun;
    QString m_UF;

};

#endif // TRANSPORTA_H