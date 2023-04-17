#ifndef HPSCARDMODEL_H_
#define HPSCARDMODEL_H_

#include <QSqlDatabase>
#include <QObject>
#include <QString>
#include <QAbstractListModel>

struct Data {
  Data() {}
  Data( const QString& header, const QString& image, const QString& address, const QString& category, const QString& description)
    : header(header), image(image), address(address), category(category), description(description) {}
  QString header;
  QString image;
  QString address;
  QString category;
  QString description;
};

class HPSCardModel : public QAbstractListModel
{
  Q_OBJECT

public:
  explicit HPSCardModel(QObject *parent = nullptr);
  int rowCount(const QModelIndex &parent) const override;
  QVariant data(const QModelIndex &index, int role) const override;
  Q_INVOKABLE void reload();
  QHash<int, QByteArray> roleNames() const override;
  enum Roles {
    HeaderRole,
    ImgRole,
    UrlRole,
    CategoryRole,
    DescriptionRole
  };
private:
  QVector< Data > m_dbData;
};


#endif // HPSCARDMODEL_H_
