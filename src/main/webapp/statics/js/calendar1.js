/**
 * <p>Title: calendar_left.js</p>
 * <p>Description: ��ʾһ��С����������ѡ�����ڵĵ������� </p>
 * <p>Copyright: Copyright (c) 2002</p>
 * <p>Company: Timeless</p>
 * @author lewis.liu
 * @date  2002/5/20
 * @version 1.0
 */

var gdCtrl = new Object();
var goSelectTag = new Array();
var gcGray = "#808080";        //��������������Ǹ��µ������ô˱����������ɫ��ʾ
var gcToggle = "#FFF6B7";      //���嵱��꾭����ʱ����ɫ���ʲô��ɫ
var gcBG = "#FFFFFF";       //�����ı�����ɫ
var previousObject = null;

var gdCurDate = new Date();     //��ʾ��ǰ���ڵ������ͱ���
var giYear = gdCurDate.getFullYear();     //��ʾ��ǰ��ݵ���ֵ
var giMonth = gdCurDate.getMonth()+1;	  //��ʾ��ǰ�·ݵ���ֵ
var giDay = gdCurDate.getDate();          //��ʾ��ǰ���ӵ���ֵ

var gCalMode = "";
var gCalDefDate = "";

var CAL_MODE_NOBLANK = "2";

/*
	�����������ڵ������ڴ������ѡ��������ַ���
	@iYear		��ݲ���
	@iMonth		�·ݲ���
	@iDay		���Ӳ���
*/
function fSetDate(iYear, iMonth, iDay){
  //VicPopCal.style.visibility = "hidden";
  if ((iYear == 0) && (iMonth == 0) && (iDay == 0)){
  	gdCtrl.value = "";
  }else{
  	//ͨ������100�γ�ͳһ�ı�׼��ʽ����1988-07-08��
  	iMonth = iMonth + 100 + "";
  	iMonth = iMonth.substring(1);
  	iDay   = iDay + 100 + "";
  	iDay   = iDay.substring(1);
  	gdCtrl.value = iYear+"-"+iMonth+"-"+iDay;
  }

  for (i in goSelectTag)
  	goSelectTag[i].style.visibility = "visible";
  goSelectTag.length = 0;

  window.returnValue=gdCtrl.value;
  window.close();
}

function HiddenDiv()
{
	var i;
  VicPopCal.style.visibility = "hidden";
  for (i in goSelectTag)
  	goSelectTag[i].style.visibility = "visible";
  goSelectTag.length = 0;
}


function fSetSelected(aCell){
  var iOffset = 0;
  var iYear = parseInt(tbSelYear.value);
  var iMonth = parseInt(tbSelMonth.value);

  aCell.bgColor = gcBG;
  with (aCell.children["cellText"]){
  	var iDay = parseInt(innerText);
  	if (color==gcGray)
		iOffset = (Victor<10)?-1:1;

	/*** below temp patch by maxiang ***/
	if( color == gcGray ){
		iOffset = (iDay < 15 )?1:-1;
	}
	/*** above temp patch by maxiang ***/

	iMonth += iOffset;
	if (iMonth<1) {
		iYear--;
		iMonth = 12;
	}else if (iMonth>12){
		iYear++;
		iMonth = 1;
	}
  }
  fSetDate(iYear, iMonth, iDay);
}

function Point(iX, iY){
	this.x = iX;
	this.y = iY;
}

function fBuildCal(iYear, iMonth) {
  var aMonth=new Array();
  for(i=1;i<7;i++)
  	aMonth[i]=new Array(i);

  var dCalDate=new Date(iYear, iMonth-1, 1);
  var iDayOfFirst=dCalDate.getDay();
  var iDaysInMonth=new Date(iYear, iMonth, 0).getDate();
  var iOffsetLast=new Date(iYear, iMonth-1, 0).getDate()-iDayOfFirst+1;
  var iDate = 1;
  var iNext = 1;

  for (d = 0; d < 7; d++)
	aMonth[1][d] = (d<iDayOfFirst)?-(iOffsetLast+d):iDate++;
  for (w = 2; w < 7; w++)
  	for (d = 0; d < 7; d++)
		aMonth[w][d] = (iDate<=iDaysInMonth)?iDate++:-(iNext++);
  return aMonth;
}

/*
	�˷������������Ŀ�ܡ���ʹ�ø÷�������������ʱ��Ҫ��ǰ�����<table>����������ں������</table>
	@iYear	���
	@iMonth		�·�
	@iCellHeight	��Ԫ��߶�
	@sDateTextSize	���ڳ���
*/
function fDrawCal(iYear, iMonth, iCellHeight, sDateTextSize) {
  var WeekDay = new Array("��","һ","��","��","��","��","��");
  var styleTD = " bordercolor='#e6e6e6' valign='middle' align='center' width='14%' style='font-size:9pt; ";

  with (document) {
	write("<tr>");
	for(i=0; i<7; i++)
		write("<td "+styleTD+" color:#000000' >" + WeekDay[i] + "</td>");
	write("</tr>");

  	for (w = 1; w < 7; w++) {
		write("<tr>");
		for (d = 0; d < 7; d++) {
			write("<td id=calCell "+styleTD+"cursor:hand;' onMouseOver='this.bgColor=gcToggle' onMouseOut='this.bgColor=gcBG' onclick='fSetSelected(this)'>");
			write("<font id=cellText ><b> </b></font>");
			write("</td>")
		}
		write("</tr>");
	}
  }
}

/*
	�˷���������������е����ڣ������������ݺ��·ݣ��ڱ������������
	@iYear	���
	@iMonth		�·�
*/
function fUpdateCal(iYear, iMonth) {
  myMonth = fBuildCal(iYear, iMonth);
  var i = 0;
  for (w = 0; w < 6; w++)
	for (d = 0; d < 7; d++)
		with (cellText[(7*w)+d]) {
			Victor = i++;
			if (myMonth[w+1][d]<0) {
				color = gcGray;
				innerText = -myMonth[w+1][d];
			}else{
				if( d == 0 ){
					color = "red";
				}else if( d == 6 ){
					color = "red";
				}else{
					color = "black";
				}
				innerText = myMonth[w+1][d];
			}
		}
}

/*
	�˷���������������ݺ��·ݣ����Ҹ����������ݺ��·ݸ��������е���������
	@iYear		���
	@iMon		�·�
*/
function fSetYearMon(iYear, iMon){
  tbSelMonth.options[iMon-1].selected = true;
  for (i = 0; i < tbSelYear.length; i++)
	if (tbSelYear.options[i].value == iYear)
		tbSelYear.options[i].selected = true;
  fUpdateCal(iYear, iMon);
}

/*
	�˷���ʹ��������һ���£�����ʾǰһ���µ�������Ϣ
*/
function fPrevMonth(){
  var iMon = tbSelMonth.value;
  var iYear = tbSelYear.value;

  if (--iMon<1) {
	  iMon = 12;
	  iYear--;
  }

  fSetYearMon(iYear, iMon);
}

/*
	�˷���ʹ����ǰ��һ���£�����ʾ��һ���µ�������Ϣ
*/
function fNextMonth(){
  var iMon = tbSelMonth.value;
  var iYear = tbSelYear.value;

  if (++iMon>12) {
	  iMon = 1;
	  iYear++;
  }
  fSetYearMon(iYear, iMon);
}


function fToggleTags(){
  with (document.all.tags("SELECT")){
 	for (i=0; i<length; i++)
 		if ((item(i).Victor!="Won")&&fTagInBound(item(i))){
 			item(i).style.visibility = "hidden";
 			goSelectTag[goSelectTag.length] = item(i);
 		}
  }
}

function fTagInBound(aTag){
  with (VicPopCal.style){
  	var l = parseInt(left);
  	var t = parseInt(top);
  	var r = l+parseInt(width);
  	var b = t+parseInt(height);
	var ptLT = fGetXY(aTag);
	return !((ptLT.x>r)||(ptLT.x+aTag.offsetWidth<l)||(ptLT.y>b)||(ptLT.y+aTag.offsetHeight<t));
  }
}

function fGetXY(aTag){
  var oTmp = aTag;
  var pt = new Point(0,0);
  do {
  	pt.x += oTmp.offsetLeft;
  	pt.y += oTmp.offsetTop;
  	oTmp = oTmp.offsetParent;
  } while(oTmp.tagName!="BODY");
  return pt;
}

// Main: popCtrl is the widget beyond which you want this calendar to appear;
//       dateCtrl is the widget into which you want to put the selected date.
// i.e.: <input type="text" name="dc" style="text-align:center" readonly><INPUT type="button" value="V" onclick="fPopCalendar(dc,dc);return false">
function fPopCalendar(popCtrl, dateCtrl, mode, defDate){

	gCalMode = mode;
	gCalDefDate = defDate;

  if (popCtrl == previousObject){
	  	if (VicPopCal.style.visibility == "visible"){
  		//HiddenDiv();
  		return true;
  	}
  }
  previousObject = popCtrl;
  gdCtrl = dateCtrl;
  fSetYearMon(giYear, giMonth);
  var point = fGetXY(popCtrl);

	if( gCalMode == CAL_MODE_NOBLANK ){
		document.all.CAL_B_BLANK.style.visibility = "hidden";
	}else{
		document.all.CAL_B_BLANK.style.visibility = "visible";
	}

  with (VicPopCal.style) {
  	left = point.x;
	top  = point.y+popCtrl.offsetHeight;
	width = VicPopCal.offsetWidth;
	height = VicPopCal.offsetHeight;
	fToggleTags(point);
	visibility = 'visible';
  }
}

var gMonths = new Array("1��","2��","3��","4��","5��","6��","7��","8��","9��","10��","11��","12��");

with (document) {
write("<Div id='VicPopCal' style='OVERFLOW:hidden;POSITION:absolute;VISIBILITY:hidden;border:0px ridge;width:100%;height:100%;top:0;left:0;z-index:100;overflow:hidden'>");
write("<table border='0' bgcolor='#ffffff'>");
write("<TR>");
write("<td valign='middle' align='center'><input type='image' src='../../../images/btn_l.gif' align='absmiddle' name='PrevMonth' onClick='fPrevMonth()'>");
write("&nbsp;<SELECT name='tbSelYear' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)' Victor='Won'>");
for(i=1900;i<2051;i++)
	write("<OPTION value='"+i+"'>"+i+"��</OPTION>");
write("</SELECT>");
write("&nbsp;<select name='tbSelMonth' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)' Victor='Won'>");
for (i=0; i<12; i++)
	write("<option value='"+(i+1)+"'>"+gMonths[i]+"</option>");
write("</SELECT>");
write("&nbsp;<input type='image' src='../../../images/btn_r.gif' align='absmiddle' name='PrevMonth' onclick='fNextMonth()'>");
write("</td>");
write("</TR><TR>");
write("<td align='center'>");
write("<DIV style='background-color:#ffffff'><table width='100%' border='0'>");
fDrawCal(giYear, giMonth, 8, '12');
write("</table></DIV>");
write("</td>");
write("</TR><TR><TD align='center'>");
write("<TABLE width='100%'><TR><TD align='center'>");
write("<B ID='CAL_B_BLANK' style='color:\"#ff6600\";visibility:visible;cursor:hand;font-size:12px' onClick='fSetDate(0,0,0)' onMouseOver='this.style.color=\"#000000\"' onMouseOut='this.style.color=\"#ff6600\"'>���</B>");
write("</td><td algin='center'>");
write("<B style='color:\"#ff6600\"; cursor:hand; font-size:12px' onClick='fSetDate(giYear,giMonth,giDay)' onMouseOver='this.style.color=\"#000000\"' onMouseOut='this.style.color=\"#ff6600\"'>ѡ��: "+giYear+"/"+giMonth+"/"+giDay+"</B>");
write("</td></tr></table>");
write("</TD></TR>");
write("</TABLE></Div>");

}