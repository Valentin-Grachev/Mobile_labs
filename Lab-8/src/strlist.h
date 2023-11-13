#ifndef STRLIST_H
#define STRLIST_H

#include <QObject>


class StrList : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString allStrings READ getAllStrings NOTIFY onListChanged)

public:
    explicit StrList(QObject *parent = nullptr);
    Q_INVOKABLE void add(QString str)
    {
        for (int i = 0; i < (int)str.length(); i++)
            str[0] = str[0].toLower();

        _list.push_back(str);
        emit onListChanged();
    }
    Q_INVOKABLE void deleteLast()
    {
        if (!_list.empty()) {
            _list.pop_back();
            emit onListChanged();
        }
    }

signals:
    void onListChanged();




private:
    QList<QString> _list;

    QString getAllStrings()
    {
        QString allStrings;
        for (int i = 0; i < (int)_list.length(); i++) {
            allStrings += _list[i];
            if (i != _list.length() - 1) allStrings += ", ";
        }

        allStrings[0] = allStrings[0].toUpper();
        return allStrings;
    };


};

#endif // STRLIST_H
