#-------------------------------------------------
#
# Project created by QtCreator 2013-03-15T17:28:06
#
#-------------------------------------------------

QT       += sql

QT       -= gui

TARGET = ORM
TEMPLATE = lib
CONFIG += staticlib

HEADERS += orm.h \
    ormdatabase.h \
    adapters/ormabstractadapter.h \
    ormwhere.h \
    ormgroupby.h \
    ormorderby.h \
    macros.h \
    ormobject.h \
    adapters/sqladapter.h \
    adapters/postgresqladapter.h \
    ormlogger.h

SOURCES += orm.cpp \
    ormdatabase.cpp \
    adapters/ormabstractadapter.cpp \
    ormwhere.cpp \
    ormgroupby.cpp \
    ormorderby.cpp \
    ormobject.cpp \
    adapters/sqladapter.cpp \
    adapters/postgresqladapter.cpp \
    ormlogger.cpp

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}

target.path = "C:/Users/Mihaly Balogh/Desktop/test2/lib"
headers.files = *.h
headers.path = "C:/Users/Mihaly Balogh/Desktop/test2/include"
adapters.files = adapters/*.h
adapters.path = "C:/Users/Mihaly Balogh/Desktop/test2/include/adapters"

INSTALLS += adapters
INSTALLS += headers
INSTALLS += target
