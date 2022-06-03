QT -= gui
QT += network

TEMPLATE = lib
TARGET = cppnfe

#Para estática descomente o DEFINES abaixo. Voce também deve incluir esse DEFINES em
#seu aplicativo caso use a lib estática.
#DEFINES += CPPBRASIL_STATIC

contains(DEFINES, CPPBRASIL_STATIC) {
    CONFIG += staticlib

    message(STATIC LIBRARY...)
}else{
    DEFINES += CPPBRASIL_LIBRARY

    win32{
        CONFIG += dll
    }

    macx{
        CONFIG -= dll
        CONFIG += lib_bundle
        CONFIG += plugin
    }

    linux{
        CONFIG += plugin
    }


    message(SHARED LIBRARY...)
}


CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
    ../config.cpp \
    ../convdf.cpp \
    ../cppcrypto.cpp \
    ../cpplibxml2.cpp \
    ../cppopenssl.cpp \
    ../cpputility.cpp \
    ../cppxml.cpp \
    ../cppzip.cpp \
    ../httpclient.cpp \
    ../httpopenssl.cpp \
    ../httpqt.cpp \
    ../webservices.cpp \
    adi.cpp \
    arma.cpp \
    autxml.cpp \
    avulsa.cpp \
    cana.cpp \
    card.cpp \
    cide.cpp \
    cobr.cpp \
    cofins.cpp \
    cofinsst.cpp \
    comb.cpp \
    compra.cpp \
    confignfe.cpp \
    convnf.cpp \
    cppnfe.cpp \
    deduc.cpp \
    dest.cpp \
    det.cpp \
    detexport.cpp \
    detpag.cpp \
    di.cpp \
    dup.cpp \
    emit.cpp \
    encerrante.cpp \
    enderdest.cpp \
    enderemit.cpp \
    entrega.cpp \
    eventos.cpp \
    exporta.cpp \
    exportind.cpp \
    fat.cpp \
    fordia.cpp \
    icms.cpp \
    icmstot.cpp \
    icmsufdest.cpp \
    ide.cpp \
    ii.cpp \
    imposto.cpp \
    impostodevol.cpp \
    infadic.cpp \
    infintermed.cpp \
    infnfe.cpp \
    infnfesupl.cpp \
    infresptec.cpp \
    ipi.cpp \
    issqn.cpp \
    issqntot.cpp \
    lacres.cpp \
    med.cpp \
    nfe.cpp \
    nfref.cpp \
    notafiscal.cpp \
    obscont.cpp \
    obsfisco.cpp \
    obsitem.cpp \
    pag.cpp \
    pis.cpp \
    pisst.cpp \
    procref.cpp \
    prod.cpp \
    rastro.cpp \
    reboque.cpp \
    refecf.cpp \
    refnf.cpp \
    refnfp.cpp \
    retconsstatserv.cpp \
    retirada.cpp \
    retornonfe.cpp \
    rettransp.cpp \
    rettrib.cpp \
    statusservico.cpp \
    total.cpp \
    transp.cpp \
    transporta.cpp \
    urlnfe.cpp \
    veicprod.cpp \
    veictransp.cpp \
    vol.cpp \
    wsnfe.cpp \
    xmlread.cpp \
    xmlwrite.cpp

HEADERS += \
    ../cppbrasil_global.h \
    ../config.h \
    ../container.h \
    ../convdf.h \
    ../cppcrypto.h \
    ../cpplibxml2.h \
    ../cppopenssl.h \
    ../cpputility.h \
    ../cppxml.h \
    ../cppzip.h \
    ../httpclient.h \
    ../httpopenssl.h \
    ../httpqt.h \
    ../webservices.h \
    adi.h \
    arma.h \
    autxml.h \
    avulsa.h \
    cana.h \
    card.h \
    cide.h \
    cobr.h \
    cofins.h \
    cofinsst.h \
    comb.h \
    compra.h \
    confignfe.h \
    convnf.h \
    cppnfe.h \
    deduc.h \
    dest.h \
    det.h \
    detexport.h \
    detpag.h \
    di.h \
    dup.h \
    emit.h \
    encerrante.h \
    enderdest.h \
    enderemit.h \
    entrega.h \
    eventos.h \
    exporta.h \
    exportind.h \
    fat.h \
    fordia.h \
    icms.h \
    icmstot.h \
    icmsufdest.h \
    ide.h \
    ii.h \
    imposto.h \
    impostodevol.h \
    infadic.h \
    infintermed.h \
    infnfe.h \
    infnfesupl.h \
    infresptec.h \
    ipi.h \
    issqn.h \
    issqntot.h \
    lacres.h \
    med.h \
    nfe.h \
    nfref.h \
    notafiscal.h \
    obscont.h \
    obsfisco.h \
    obsitem.h \
    pag.h \
    pis.h \
    pisst.h \
    procref.h \
    prod.h \
    rastro.h \
    reboque.h \
    refecf.h \
    refnf.h \
    refnfp.h \
    retconsstatserv.h \
    retirada.h \
    retornonfe.h \
    rettransp.h \
    rettrib.h \
    statusservico.h \
    total.h \
    transp.h \
    transporta.h \
    urlnfe.h \
    veicprod.h \
    veictransp.h \
    vol.h \
    wsnfe.h \
    xmlread.h \
    xmlwrite.h

RESOURCES += \
       resourcenfe.qrc

# Default rules for deployment.
unix {
    INCLUDEPATH += $$PWD/..
    INCLUDEPATH += /usr/include \
                   /usr/include/libxml2
    target.path = /usr/lib

    LIB += -lcrypt -lssl -lz
}
!isEmpty(target.path): INSTALLS += target

