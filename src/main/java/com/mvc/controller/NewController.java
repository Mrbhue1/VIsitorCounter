package com.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.model.Course;

@Controller
public class NewController {

	 private static List<Course> course = new ArrayList<Course>();

	    static {
	        course.add(new Course("1", "Msc"));
	        course.add(new Course("2", "B.Tech"));
	        course.add(new Course("3", "M.Tech"));
	        course.add(new Course("4", "MBBS"));
	        course.add(new Course("5", "MA"));
	    }

	    @RequestMapping(value = { "/index"}, method = RequestMethod.GET)
	    public String index(Model model) {

//	        String message = "Welcome to My Website";
//
//	        model.addAttribute("message", message);

	        return "index";
	    }

	    @RequestMapping(value = { "/courseList" }, method = RequestMethod.GET)
	    public String viewCourseList(Model model) {

	        model.addAttribute("course", course);

	        return "course";
	    }
	    @RequestMapping(value = { "/counter" }, method = RequestMethod.GET)
	    public String viewCounter(Model model) {

	        int counter = 0;
			model.addAttribute("counter", counter);

	        return "counter";
	    }

}
