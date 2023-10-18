#include "datetime.h"
#include "lobby1scene.h"
#include "Systems/Scene/scenemanager.h"
DateTime::DateTime(QObject *parent) : QObject(parent)
{

}

DateTime::~DateTime()
{

}

QString DateTime::GetContextPropertyName()
{
    return CONTEXT_PRO;

}

QString DateTime::GetUMLPath()
{
    return UML_PATH;

}

void DateTime::OnKeyDown(const int key)
{
    if(key == Qt::Key_Backspace){
        CScene::SceneManager::GetInstance()->LoadScene<Lobby1Scene>(nullptr);
    }
    if(key == Qt::Key_Return){
        CScene::SceneManager::GetInstance()->LoadScene<Lobby1Scene>(nullptr);
    }
}

void DateTime::OnSceneLoaded(CScene::SceneData *)
{

}

void DateTime::OnSceneUnload()
{

}
