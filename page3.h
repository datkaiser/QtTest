#ifndef PAGE3_H
#define PAGE3_H
#include <QObject>

class Page3: public QObject{
    Q_OBJECT
    Q_PROPERTY(QString status READ status WRITE setStatus NOTIFY statusChanged)
 public:
    explicit Page3(QObject *parent = nullptr):QObject(parent){

    }
    Q_INVOKABLE void save(QString const &username)
    {
        username;
        emit saveSucess3();
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
    void saveSucess3();
    void statusChanged();
private:
    QString mStatus;
};
#endif // PAGE3_H
