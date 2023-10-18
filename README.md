#ifndef DATETIME_H
#define DATETIME_H
#include "Systems/Scene/scene.h"

#include <QObject>

class DateTime : public QObject, public CScene::Scene
{
    Q_OBJECT
private:
    const QString CONTEXT_PRO = "datetime";
    const QString UML_PATH = "VendorMachine/UIs/DateTime.qml";
public:
    explicit DateTime(QObject *parent = nullptr);
    ~DateTime();
signals:


    // Scene interface
public:
    QString GetContextPropertyName();
    QString GetUMLPath();
    void OnKeyDown(const int);
    void OnSceneLoaded(CScene::SceneData *);
    void OnSceneUnload();
};


#endif // DATETIME_H
