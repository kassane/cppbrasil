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


#ifndef CPPBRASIL_GLOBAL_H
#define CPPBRASIL_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(CPPNFE_LIBRARY)
#  define CPPNFE_EXPORT Q_DECL_EXPORT
#else
#  define CPPNFE_EXPORT Q_DECL_IMPORT
#endif

#if defined(CPPDANFE_LIBRARY)
#  define CPPDANFE_EXPORT Q_DECL_EXPORT
#else
#  define CPPDANFE_EXPORT Q_DECL_IMPORT
#endif

#endif // CPPNFE_GLOBAL_H
