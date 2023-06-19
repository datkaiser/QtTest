#ifndef BACKEND_H
#define BACKEND_H
#include <QObject>

class Backend: public QObject{
    Q_OBJECT
    Q_PROPERTY(QString status READ status WRITE setStatus NOTIFY statusChanged)
 public:
    explicit Backend(QObject *parent = nullptr):QObject(parent){

    }
    Q_INVOKABLE void save(QString const &username)
    {
        username;
        emit saveSucess();
        setStatus(username);
    }

    QString status()const{
        return mStatus;
    }
    void setStatus(QString const &status){
        if(mStatus == status){
            return;
        }
        mStatus = status;
        emit statusChanged();

    }

signals:
    void saveSucess();
    void statusChanged();
private:
    QString mStatus;
};
#endif // BACKEND_H
