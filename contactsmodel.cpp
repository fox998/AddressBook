#include "contactsmodel.h"

#define ROLE_NAME(NAME) {ContactRoles::NAME, #NAME}

ContactsModel::ContactsModel()
{

}

QHash<int, QByteArray> ContactsModel::roleNames() const
{
    static QHash<int, QByteArray> const roleNames = {
        ROLE_NAME(Name),
        ROLE_NAME(Surname),
        ROLE_NAME(PhoneNumber)
    };

    return roleNames;
}

int ContactsModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return static_cast<int>(m_contacts.size());
}

QVariant ContactsModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid() || index.row() > rowCount())
    {
        return {};
    }

    ContactRoles const contactRole = role;
    Contact const constact = m_contacts.at(index.row());

    switch (contactRole) {
    case ContactRoles::Name:
        return constact.name;
        break;
    case ContactRoles::Surname:
        return constact.surname;
        break;
    case ContactRoles::PhoneNumber:
        return constact.phone;
        break;
    default:
        return {};
        break;
    }
}
