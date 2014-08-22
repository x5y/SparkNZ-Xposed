package nz.cwong.spark;

import static de.robv.android.xposed.XposedHelpers.findAndHookMethod;
import static de.robv.android.xposed.XposedHelpers.setObjectField;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodReplacement;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam;

public class ProgressBar implements IXposedHookLoadPackage {
	
	@Override
	public void handleLoadPackage(LoadPackageParam lpparam) throws Throwable {
		if (!lpparam.packageName.equals("nz.co.telecom.smartphone.android")){
			return;
		}
		
		XposedBridge.log("In the Spark app");
		findAndHookMethod("nz.co.telecom.smartphone.widget.UsageMeterView", lpparam.classLoader, "setTitle", String.class, new XC_MethodReplacement(){
			@Override
			protected Object replaceHookedMethod(MethodHookParam param) throws Throwable {
				// findField(String.class, "title");
				setObjectField(param.thisObject, "title", "Hello!");
				return null;
			}

		});
		
	}

}
