#include "HPSSms.h"
#include <QtAndroid>

HPSSms::HPSSms(QObject *parent)
: QObject(parent)
{

}
void HPSSms::prepareSMS() {
        QAndroidIntent activityIntent(QtAndroid::androidActivity().object(),
                                  "com/hps/HPS/SMSActivity");
        QtAndroid::startActivity(activityIntent.handle(), 0);
}
