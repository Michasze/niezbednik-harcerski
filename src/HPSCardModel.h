#ifndef HPSCARDMODEL_H_
#define HPSCARDMODEL_H_

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

//  Q_PROPERTY(QVector< Data > filteredDane READ filteredDane WRITE setFilteredDane NOTIFY daneChanged)
public:
  explicit HPSCardModel(QObject *parent = nullptr);
  int rowCount(const QModelIndex &parent) const override;
  QVariant data(const QModelIndex &index, int role) const override;
  QVector< Data > dane();
  QVector< Data > m_data;
  QVector< Data > filteredDane();
  void setFilteredDane( const QString &query);
  QHash<int, QByteArray> roleNames() const override;
  enum Roles {
    HeaderRole,
    ImgRole,
    UrlRole,
    CategoryRole,
    DescriptionRole
  };
Q_SIGNALS:
  void daneChanged();
private:
  QString m_query;
};


#endif // HPSCARDMODEL_H_
