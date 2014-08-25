package nz.cwong.spark;

import static de.robv.android.xposed.XposedHelpers.*;

import java.lang.reflect.Field;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import android.support.v4.app.FragmentActivity;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XC_MethodReplacement;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XC_MethodHook.MethodHookParam;
import de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam;

public class ProgressBar implements IXposedHookLoadPackage {
	
	@Override
	public void handleLoadPackage(final LoadPackageParam lpparam) throws Throwable {
		if (!lpparam.packageName.equals("nz.co.telecom.smartphone.android")){
			return;
		}
		
		XposedBridge.log("In the Spark app");
		
		findAndHookConstructor("nz.co.telecom.smartphone.adapter.AdapterMyUsage", lpparam.classLoader, FragmentActivity.class,
				findClass("nz.co.telecom.smartphone.dto.lineextended.LineExtendedDTO", lpparam.classLoader),
				new XC_MethodHook() {
			@Override
			protected void afterHookedMethod(MethodHookParam param) throws Throwable {
				List usageMeters = (List) getObjectField(
						((List) getObjectField(param.thisObject, "mAllUsageMeters")).get(0), "usageMeters");
				Object monthUsageMeter = newInstance(findClass("nz.co.telecom.smartphone.dto.lineextended.LineExtendedUsageMetersDTO", lpparam.classLoader));
				usageMeters.add(0, monthUsageMeter);
				int lastDayOfMonth = Calendar.getInstance().getActualMaximum(Calendar.DAY_OF_MONTH);
				int currentDayOfMonth = Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
				Date d = new Date(); d.setDate(lastDayOfMonth);
				setObjectField(usageMeters.get(0), "amountUsed", currentDayOfMonth);
				setObjectField(usageMeters.get(0), "cap", lastDayOfMonth);
				setObjectField(usageMeters.get(0), "lineAmountUsed", 0.0f);
				setObjectField(usageMeters.get(0), "periodEnd", d);
				setObjectField(usageMeters.get(0), "periodEndLabel", "Last Day:");
				setObjectField(usageMeters.get(0), "productInstanceId", "instanceId");
				setObjectField(usageMeters.get(0), "remainingLabel", lastDayOfMonth - currentDayOfMonth + " days left");
				setObjectField(usageMeters.get(0), "secondCap", 100.0f);
				setObjectField(usageMeters.get(0), "title", "Monthly Progress");
				setObjectField(usageMeters.get(0), "usageLabel", currentDayOfMonth + " days gone");
				setObjectField(usageMeters.get(0), "usageType", "usageType");
			}
			
		});
/*		findAndHookMethod("nz.co.telecom.smartphone.widget.UsageMeterView", lpparam.classLoader, "setTitle", String.class, new XC_MethodReplacement(){
			@Override
			protected Object replaceHookedMethod(MethodHookParam param) throws Throwable {
				// setObjectField(param.thisObject, "title", "Hello!");
				return null;
			}

		});*/
		
	}

}
