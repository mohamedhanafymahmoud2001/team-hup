import 'package:fl_chart/fl_chart.dart'; // مكتبة لإنشاء الرسومات البيانية
import 'package:flutter/material.dart'; // مكتبة أساسية لبناء واجهات التطبيقات
import 'package:teamhup/componant/colorsapp.dart'; // ملف خاص بالألوان (colorsApp)

class LineChartSample extends StatelessWidget {
  // تعريف كلاس الألوان (لإدارة الألوان في التطبيق)
  ColorsApp colorsApp = new ColorsApp();

  @override
  Widget build(BuildContext context) {
    // بناء المخطط الخطي (Line Chart)
    return LineChart(
      LineChartData(
        // تحديد القيم الدنيا والقصوى للمحور العمودي (Y-axis)
        minY: 1, // أقل قيمة على المحور العمودي
        maxY: 8, // أعلى قيمة على المحور العمودي
        
        // التحكم في الشبكة (خطوط الشبكة داخل الرسم البياني)
        gridData: FlGridData(
          show: false, // إخفاء خطوط الشبكة
        ),

        // التحكم في النصوص الموجودة على المحاور
        titlesData: FlTitlesData(
          // إعداد النصوص على المحور الأفقي (X-axis)
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true, // إظهار النصوص على المحور السفلي
              getTitlesWidget: (value, _) {
                // تحديد النصوص حسب قيمة النقطة (value)
                switch (value) {
                  case 0:
                    return Text("W1"); // النص عند النقطة 0
                  case 1:
                    return Text("W2"); // النص عند النقطة 1
                  case 2:
                    return Text("W3"); // النص عند النقطة 2
                  case 3:
                    return Text("W4"); // النص عند النقطة 3
                }
                return Text(""); // النص الافتراضي (غير مهم هنا)
              },
            ),
          ),
          // إعداد النصوص على المحور العمودي (Y-axis)
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false, // إخفاء النصوص على المحور العمودي
            ),
          ),
        ),

        // التحكم في حدود الرسم البياني
        borderData: FlBorderData(
          show: false, // إخفاء الحدود الخارجية للرسم البياني
        ),

        // بيانات الرسم البياني (النقاط والخطوط)
        lineBarsData: [
          LineChartBarData(
            // النقاط التي يتكون منها الخط البياني
            spots: [
              FlSpot(0, 3), // النقطة الأولى عند (X=0, Y=3)
              FlSpot(1, 6), // النقطة الثانية عند (X=1, Y=6)
              FlSpot(2, 4), // النقطة الثالثة عند (X=2, Y=4)
              FlSpot(3, 8), // النقطة الرابعة عند (X=3, Y=8)
            ],
            isCurved: true, // جعل الخط منحني بدلاً من أن يكون مستقيماً
            color: Colors.black, // لون الخط الرئيسي
            barWidth: 2, // عرض الخط

            // إعداد المساحة تحت الخط (تظليل)
            belowBarData: BarAreaData(
              show: true, // إظهار التظليل أسفل الخط
              gradient: LinearGradient(
                colors: [
                  // تدرج لوني من الرمادي الشفاف إلى الشفافية الكاملة
                  colorsApp.colorgreyapp.withOpacity(0.3), // الرمادي الشفاف
                  colorsApp.colorgreyapp.withOpacity(0.0), // الشفافية الكاملة
                ],
                begin: Alignment.topCenter, // بداية التدرج من الأعلى
                end: Alignment.bottomCenter, // نهاية التدرج للأسفل
              ),
            ),

            // إعداد النقاط (Dots) على الخط
            dotData: FlDotData(
              show: true, // إظهار النقاط
              getDotPainter: (spot, percent, barData, index) {
                // تخصيص مظهر النقاط
                return FlDotCirclePainter(
                  radius: 4, // نصف قطر النقطة
                  color: Colors.black, // لون النقطة
                  strokeColor: Colors.white, // لون الحدود حول النقطة
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
