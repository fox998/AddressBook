#ifndef CONTACTSMODEL_H
#define CONTACTSMODEL_H

#include <QAbstractListModel>
#include <vector>

class ContactsModel : public QAbstractListModel
{
    Q_OBJECT
public:

    struct Contact
    {
        QString name;
        QString surname;
        QString phone;
    };

    ContactsModel();

    QHash<int, QByteArray> roleNames() const override;
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int role) const override;

private:
    std::vector<Contact> m_contacts;
    enum ContactRoles{
        Name = Qt::UserRole + 1,
        Surname,
        PhoneNumber
    };
};

#endif // CONTACTSMODEL_H
