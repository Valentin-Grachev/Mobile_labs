#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>

class Counter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int value READ getValue WRITE setValueNoNotify NOTIFY onCountChanged)

public:
    explicit Counter(QObject *parent = nullptr);

    Q_INVOKABLE int getValue() { return _value; };
    Q_INVOKABLE void increment() { setValue(_value + 1); };
    Q_INVOKABLE void reset() { setValue(0); };

    void setValueNoNotify(const int value) {
        _value = value;
    }

    void setValue(const int value) {
        _value = value;
        printf("Count changed: %i", _value);
        emit onCountChanged();
    };

signals:
    void onCountChanged();


private:
    int _value = 0;
};

#endif // COUNTER_H
