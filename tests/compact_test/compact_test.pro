QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        compact_test.cpp \
        main.cpp

LIBS += -L$$PWD/libs/ -llogger -L$$PWD/libs/ -lvector -L$$PWD/libs/ -lset -L$$PWD/libs/ -lcompact

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    ICompact.h \
    ILogger.h \
    IVector.h \
    RC.h \
    compact_test.h
