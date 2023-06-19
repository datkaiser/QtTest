#ifndef PAGE2_H
#define PAGE2_H
#include <QObject>

class Page2: public QObject{
    Q_OBJECT
    Q_PROPERTY(QString status READ status WRITE setStatus NOTIFY statusChanged)
 public:
    explicit Page2(QObject *parent = nullptr):QObject(parent){

    }
    Q_INVOKABLE void save(QString const &username)
    {
        username;
        emit saveSucess2();
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
    void saveSucess2();
    void statusChanged();
private:
    QString mStatus;
};
#endif // PAGE2_H
