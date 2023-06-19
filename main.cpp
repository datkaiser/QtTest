#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "backend.h"
#include "login.h"
#include "page2.h"
#include "page3.h"
int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    qmlRegisterType<Backend>("projectX.Backend",1,0,"Backend");
    qmlRegisterType<Login>("projectX.Login",1,0,"Login");
    qmlRegisterType<Page2>("projectX.Page2",1,0,"Page2");
    qmlRegisterType<Page3>("projectX.Page3",1,0,"Page3");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
