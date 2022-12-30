package com.keduit.controller;

import com.keduit.controller.action.Action;
import com.keduit.controller.action.employeeCheckPassAction;
import com.keduit.controller.action.employeeCheckPassFormAction;
import com.keduit.controller.action.employeeListAction;
import com.keduit.controller.action.employeeUpdateAction;
import com.keduit.controller.action.employeeUpdateFormAction;
import com.keduit.controller.action.employeeViewAction;
import com.keduit.controller.action.employeeWriteAction;
import com.keduit.controller.action.employeeWriteFormAction;
import com.keduit.controller.action.employeeDeleteAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		if(command.equals("employee_list")) {
			action = new employeeListAction();
		} else if(command.equals("employee_write_form")) {
			action = new employeeWriteFormAction();
		} else if(command.equals("employee_write")) {
			action = new employeeWriteAction();
		} else if(command.equals("employee_view")) {
			action = new employeeViewAction();
		} else if(command.equals("employee_check_pass_form")) {
			action = new employeeCheckPassFormAction();
		} else if(command.equals("employee_check_pass")) {
			action = new employeeCheckPassAction();
		} else if(command.equals("employee_update")) {
			action = new employeeUpdateAction();
		} else if(command.equals("employee_update_form")) {
			action = new employeeUpdateFormAction();
		} else if(command.equals("employee_delete")) {
			action = new employeeDeleteAction();
		}
		return action;
		
	}
	
	
}

