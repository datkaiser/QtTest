#ifndef LOGIN_H
#define LOGIN_H

#include <QObject>

class Login: public QObject{
    Q_OBJECT
    Q_PROPERTY(QString status READ status WRITE setStatus NOTIFY statusChanged)
 public:
    explicit Login(QObject *parent = nullptr):QObject(parent){

    }
    Q_INVOKABLE void login(QString const &password)
    {
        if(password == "123"){
            emit loginSucess();
        }else{
            setStatus("Username/Password is not correct");
            emit loginFail();
        }
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
    void loginSucess();
    void loginFail();
    void statusChanged();
private:
    QString mStatus;
};
#endif // LOGIN_H
