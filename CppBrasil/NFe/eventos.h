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


#ifndef EVENTOS_H
#define EVENTOS_H

#include <memory>
#include <QObject>
#include <CppBrasil/cppbrasil_global.h>
#include <CppBrasil/NFe/confignfe.h>
#include <CppBrasil/NFe/wsnfe.h>
#include <CppBrasil/NFe/statusservico.h>
#include <CppBrasil/NFe/notafiscal.h>

class CPPBRASIL_EXPORT Eventos : public QObject
{
    Q_OBJECT
public:
    Eventos(ConfigNFe* confgNFe, NotaFiscal* notafiscal);

    std::shared_ptr<StatusServico> statusServico;

private:
    NotaFiscal* m_notafiscal;

signals:
    void errorOccurred(const QString &error);
    void wsChange(const WebServicesNF &webServicesNF);
};

#endif // EVENTOS_H