TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.c \
    tpl.c \
    win/mmap.c \
    crsync.c \
    blake2b-ref.c

include(deployment.pri)
qtcAddDeployment()

HEADERS += \
    tpl.h \
    win/mman.h \
    uthash.h \
    crsync.h \
    blake2.h \
    blake2-impl.h \
    utstring.h

#LIBS += -L$${_PRO_FILE_PWD_}/../libcurl/lib -lcurldll
DEFINES += CURL_STATICLIB
LIBS += -L$${_PRO_FILE_PWD_}/../libcurl/lib -lcurl -lws2_32

INCLUDEPATH += ../libcurl/include

QMAKE_CFLAGS += -std=c99
QMAKE_LFLAGS += -static -static-libgcc
