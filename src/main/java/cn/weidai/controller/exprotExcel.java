package cn.weidai.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.User;
import cn.weidai.service.lendRecord.LendRecordServiceImpl;
import cn.weidai.tools.Constants;
import cn.weidai.tools.TimeLag;

import com.alibaba.fastjson.JSON;




@Controller
@RequestMapping("/exprot")
public class exprotExcel{
	private Logger logger = Logger.getLogger(exprotExcel.class);
	@Resource
	private LendRecordServiceImpl lendRecordServiceImpl;
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/excell.json",method=RequestMethod.GET)
	@ResponseBody
	public String FromDbToExcel(HttpSession session){
		logger.debug("进入excel===================================================");
		HashMap<String,Object> resultMap =new HashMap<String,Object>();
		String[] str1={"项目名称","预期利率","剩余期数","待收本息(元)","已收回款(元)","剩余本金(元)","下个回款日"};
		String[] str2={"项目名称","预期利率","剩余期数","已转本金(元)"};
		//弹出文件下载框
		FileNameExtensionFilter filter=new FileNameExtensionFilter("*.xls","xls");
		JFileChooser fc=new JFileChooser();
		fc.setFileFilter(filter);
		fc.setMultiSelectionEnabled(false);
		int result=fc.showSaveDialog(null);
		FileOutputStream fos=null;
		if (result==JFileChooser.APPROVE_OPTION) {
			File file=fc.getSelectedFile();
			if (!file.getPath().endsWith(".xls")) {
				file=new File(file.getPath()+".xls");
			}
			System.out.println("file path="+file.getPath());
			try {
				if (!file.exists()) {//文件不存在 则创建一个
					file.createNewFile();
					// 建立一个 excel表
					Workbook book = new HSSFWorkbook();
					// 在对应的Excel中建立一个可转让分表
					Sheet kz =(Sheet) book.createSheet("可转让");
					// 设置相应的行（初始从0开始）
					Row kzrow =kz.createRow(0);
					for(int i=0;i<str1.length;i++){
					// 在所在的行设置所在的单元格（相当于列，初始从0开始,对应的就是A列）
					Cell kzcell = kzrow.createCell(i);
					// 写入相关数据到设置的行列中去。
					kzcell.setCellValue(str1[i]);
					}
					resultMap = (HashMap<String, Object>) getLendRecordByStatus("kz", session);
					for(int j=1;j<=((List<LendRecord>)(resultMap.get("lendRecords"))).size();j++){
						Row kzrowj =kz.createRow(j);
							Cell kzcel0 = kzrowj.createCell(0);
							kzcel0.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbProjectCode());
							Cell kzcell = kzrowj.createCell(1);
							kzcell.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbRate()+"%");
							Cell kzcel2 = kzrowj.createCell(2);
							kzcel2.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbRemainTimelimit()+"期");
							Cell kzcel3 = kzrowj.createCell(3);
							kzcel3.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlDuePriAndInt());
							Cell kzcel4 = kzrowj.createCell(4);
							kzcel4.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlRecProAndInt());
							Cell kzcel5 = kzrowj.createCell(5);
							kzcel5.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlDueCapital());
							Cell kzcel6 = kzrowj.createCell(6);
							kzcel6.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).gettRemittance());
					}
					
					
					// 在对应的Excel中建立一个转让中分表
					Sheet zz =(Sheet) book.createSheet("转让中");
					// 设置相应的行（初始从0开始）
					Row zzrow =zz.createRow(0);
					for(int i=0;i<str1.length;i++){
					// 在所在的行设置所在的单元格（相当于列，初始从0开始,对应的就是A列）
					Cell zzcell = zzrow.createCell(i);
					// 写入相关数据到设置的行列中去。
					zzcell.setCellValue(str1[i]);
					}
					resultMap = (HashMap<String, Object>) getLendRecordByStatus("zz", session);
					for(int j=1;j<=((List<LendRecord>)(resultMap.get("lendRecords"))).size();j++){
						Row kzrowj =zz.createRow(j);
							Cell kzcel0 = kzrowj.createCell(0);
							kzcel0.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbProjectCode());
							Cell kzcell = kzrowj.createCell(1);
							kzcell.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbRate()+"%");
							Cell kzcel2 = kzrowj.createCell(2);
							kzcel2.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbRemainTimelimit()+"期");
							Cell kzcel3 = kzrowj.createCell(3);
							kzcel3.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlDuePriAndInt());
							Cell kzcel4 = kzrowj.createCell(4);
							kzcel4.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlRecProAndInt());
							Cell kzcel5 = kzrowj.createCell(5);
							kzcel5.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlDueCapital());
							Cell kzcel6 = kzrowj.createCell(6);
							kzcel6.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).gettRemittance());
					}
					
					// 在对应的Excel中建立一个已转让分表
					Sheet yz =(Sheet) book.createSheet("已转让");
					// 设置相应的行（初始从0开始）
					Row yzrow =yz.createRow(0);
					for(int i=0;i<str2.length;i++){
					// 在所在的行设置所在的单元格（相当于列，初始从0开始,对应的就是A列）
					Cell yzcell = yzrow.createCell(i);
					// 写入相关数据到设置的行列中去。
					yzcell.setCellValue(str2[i]);
					}
					resultMap = (HashMap<String, Object>) getLendRecordByStatus("yz", session);
					for(int j=1;j<=((List<LendRecord>)(resultMap.get("lendRecords"))).size();j++){
						Row kzrowj =yz.createRow(j);
							Cell kzcel0 = kzrowj.createCell(0);
							kzcel0.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbProjectCode());
							Cell kzcell = kzrowj.createCell(1);
							kzcell.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbRate()+"%");
							Cell kzcel2 = kzrowj.createCell(2);
							kzcel2.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbRemainTimelimit()+"期");
							Cell kzcel3 = kzrowj.createCell(3);
							kzcel3.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlDuePriAndInt());
							Cell kzcel4 = kzrowj.createCell(4);
							kzcel4.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlDuePriAndInt());
					}
					
					
					// 在对应的Excel中建立一个已承接分表
					Sheet yj =(Sheet) book.createSheet("已承接");
					// 设置相应的行（初始从0开始）
					Row yjrow =yj.createRow(0);
					for(int i=0;i<str1.length;i++){
					// 在所在的行设置所在的单元格（相当于列，初始从0开始,对应的就是A列）
					Cell yjcell = yjrow.createCell(i);
					// 写入相关数据到设置的行列中去。
					yjcell.setCellValue(str1[i]);
					}
					resultMap = (HashMap<String, Object>) getLendRecordByStatus("yj", session);
					for(int j=1;j<=((List<LendRecord>)(resultMap.get("lendRecords"))).size();j++){
						Row kzrowj =yj.createRow(j);
							Cell kzcel0 = kzrowj.createCell(0);
							kzcel0.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbProjectCode());
							Cell kzcell = kzrowj.createCell(1);
							kzcell.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbRate()+"%");
							Cell kzcel2 = kzrowj.createCell(2);
							kzcel2.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getbRemainTimelimit()+"期");
							Cell kzcel3 = kzrowj.createCell(3);
							kzcel3.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlDuePriAndInt());
							Cell kzcel4 = kzrowj.createCell(4);
							kzcel4.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlRecProAndInt());
							Cell kzcel5 = kzrowj.createCell(5);
							kzcel5.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).getlDueCapital());
							Cell kzcel6 = kzrowj.createCell(6);
							kzcel6.setCellValue(((List<LendRecord>)(resultMap.get("lendRecords"))).get(j-1).gettRemittance());
					}
					
					
					// 保存到计算机相应路径
					fos = new FileOutputStream(file.getPath());
					try {
						book.write(fos);
					} catch (FileNotFoundException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				return JSON.toJSONString("success");
			} catch (IOException e) {
				System.err.println("文件创建失败：");
				e.printStackTrace();
			}finally{
				try {
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		return JSON.toJSONString("fail");
	}
	
	public Map<String,Object> getLendRecordByStatus(String lStatus,HttpSession session){
		LendRecord lendRecord = new LendRecord();
		Integer uId=((User)session.getAttribute(Constants.USER_SESSION)).getuId();
		lendRecord.setlStatus(lStatus);
		HashMap<String,Object> resultMap =new HashMap<String,Object>();
		//获取出借记录详情
		List<LendRecord> lendRecords = lendRecordServiceImpl.getLendRecordToExcel(uId, lStatus);
		logger.debug(lendRecords);
		//获取分页信息总数
		int totalCount = lendRecordServiceImpl.getLRecordTotalCount(lendRecord);
	
		logger.debug(lendRecords);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for(LendRecord record:lendRecords){
			//计算剩余期数
			if(TimeLag.DayTimeLag(formatter.format(record.getbBearingDate()))<=0){
				record.setbRemainTimelimit(TimeLag.MonthTimeLag(record.getbTimelimit(),formatter.format(record.getbBearingDate())));
			}else{
				record.setbRemainTimelimit(1+TimeLag.MonthTimeLag(record.getbTimelimit(),formatter.format(record.getbBearingDate())));
			}
			//待收本息(元)
			if(record.getbRepayment().trim().equals("月还息到期还本")){
				record.setlDuePriAndInt(record.getlAmount()*record.getbRate()/100/12*record.getbRemainTimelimit()+record.getlAmount());
			}else{
				record.setlDuePriAndInt((record.getlAmount()*record.getbRate()/100/12*Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())/(Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())-1))*record.getbRemainTimelimit());
			}
			logger.debug("已购买债权数额"+record.getlAmount()+" 利率"+record.getbRate()+" 剩余期数");
			//已收汇款(元)
			int lRecProAndIntOfMonth1=record.getbTimelimit()-record.getbRemainTimelimit();
			int lRecProAndIntOfMonth2=0;
			try {
				lRecProAndIntOfMonth2=1+TimeLag.MonthTimeLag(lRecProAndIntOfMonth1, TimeLag.subMonth(lRecProAndIntOfMonth1+1, formatter.format(record.getbBearingDate())));
				logger.debug("交易后起息时间："+TimeLag.subMonth(lRecProAndIntOfMonth1+1, formatter.format(record.getbBearingDate())));
				if(record.getbRepayment().trim().equals("月还息到期还本")){
					record.setlRecProAndInt(record.getlAmount()*record.getbRate()/100/12*(lRecProAndIntOfMonth1-lRecProAndIntOfMonth2));
				}else{
					record.setlRecProAndInt((record.getlAmount()*record.getbRate()/100/12*Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())/(Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())-1))*(lRecProAndIntOfMonth1-lRecProAndIntOfMonth2));
				}
				logger.debug("lRecProAndIntOfMonth1"+lRecProAndIntOfMonth1+" lRecProAndIntOfMonth2"+lRecProAndIntOfMonth2);
			} catch (ParseException e1) {
				e1.printStackTrace();
			}

			//剩余本金(元)
			if(record.getbRepayment().trim().equals("月还息到期还本")){
				record.setlDueCapital(record.getlAmount());
			}else{
				double capital=0;
				double lAmount = record.getlAmount();
				double repaymentOfMonth = (record.getlAmount()*record.getbRate()/100/12*Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())/(Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())-1));
				logger.debug(repaymentOfMonth+"==========================================================");
				for(int i=1;i<(lRecProAndIntOfMonth1-lRecProAndIntOfMonth2);i++){
					capital +=repaymentOfMonth-lAmount*record.getbRate()/100/12;
					lAmount=lAmount - (repaymentOfMonth-lAmount*record.getbRate()/100/12);
				}
				record.setlDueCapital(lAmount);
			}
			//下个回款日
			try {
				record.settRemittance(formatter.parse(TimeLag.subMonth(record.getbTimelimit(), formatter.format(record.getbBearingDate()))));
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		resultMap.put("totalCount",totalCount);
		resultMap.put("lendRecords",lendRecords);
		return resultMap; 
	}
}
