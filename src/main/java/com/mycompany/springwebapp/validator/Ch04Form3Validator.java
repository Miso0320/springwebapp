package com.mycompany.springwebapp.validator;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.mycompany.springwebapp.dto.Ch04Form3;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch04Form3Validator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		log.info("실행");
		boolean check = Ch04Form3.class.isAssignableFrom(clazz);
		return check;
	}

	@Override
	public void validate(Object target, Errors errors) {
		log.info("실행");
		Ch04Form3 ch04Form3 = (Ch04Form3) target;

		// mid 검사
		String mid = ch04Form3.getMid();
		if (mid == null || mid.equals("")) {
			errors.rejectValue("mid", "errors.form.required", "필수 입력(D)");
		} else if (mid.length() < 8) {
			errors.rejectValue("mid", "errors.form.minlength", new Object[] { 8 }, "최소 8자 입력(D)");
		} else if (mid.length() > 15) {
			errors.rejectValue("mid", "errors.form.maxlength", new Object[] { 15 }, "최대 15자 입력(D)");
		}

		// mpassword 검사
		String mpassword = ch04Form3.getMpassword();
		if (mpassword == null || mpassword.equals("")) {
			errors.rejectValue("mpassword", "errors.form.required", "필수 입력(D)");
		} else {
			String regExp = "^[a-zA-Z0-9]*$";
			boolean result = Pattern.matches(regExp, mpassword);
			if (result == false) {
				errors.rejectValue("mpassword", "errors.form.format", "비밀번호 형식에 맞지 않음(D)");
			} else if (mpassword.length() < 8) {
				errors.rejectValue("mpassword", "errors.form.minlength", new Object[] { 8 }, "최소 8자 입력(D)");
			} else if (mpassword.length() > 10) {
				errors.rejectValue("mpassword", "errors.form.maxlength", new Object[] { 15 }, "최대 15자 입력(D)");
			}
		}

		// memail 검사
		String memail = ch04Form3.getMemail();
		if (memail == null || memail.equals("")) {
			errors.rejectValue("memail", "errors.form.required", "필수 입력(D)");
		} else {
			String regExp = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$";
			boolean result = Pattern.matches(regExp, memail);
			if (result == false) {
				errors.rejectValue("memail", "errors.form.format", "이메일 형식에 맞지 않음(D)");
			}
		}

		// mtel 검사
		String mtel = ch04Form3.getMtel();
		if (mtel == null || mtel.equals("")) {
			errors.rejectValue("mtel", "errors.form.required", "필수 입력(D)");
		} else {
			String regExp = "^(010|011)-[0-9]{3,4}-[0-9]{4}$";
			boolean result = Pattern.matches(regExp, mtel);
			if (result == false) {
				errors.rejectValue("mtel", "errors.form.format", "전화번호 형식에 맞지 않음(D)");
			}
		}
	}
}
