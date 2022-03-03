package com.example.charts.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.charts.model.PieModel;
import com.google.gson.Gson;

@Controller
@RequestMapping("/pie/*")

//Chart with Gson
public class PieController {
	@RequestMapping(value="pieChart", method=RequestMethod.GET)
	public ModelAndView showPieChartPage() {
		ModelAndView mv= new ModelAndView("piechart");
		List<PieModel> list= new ArrayList<>();
		list.add(new PieModel("Pakistan", 9.0));
		list.add(new PieModel("Ireland", 40.0));
		list.add(new PieModel("USA", 90.0));
		list.add(new PieModel("UK", 98.0));
		list.add(new PieModel("Germany", 100.0));
		mv.addObject("pieData",new Gson().toJson(list));
		return mv;
	}
	
//Chart with Gson	
	@RequestMapping(value="colChart", method=RequestMethod.GET)
	public ModelAndView showColChartPage() {
		ModelAndView mv= new ModelAndView("columnchart");
		List<PieModel> list= new ArrayList<>();
		list.add(new PieModel("Pakistan", 9.0));
		list.add(new PieModel("Ireland", 40.0));
		list.add(new PieModel("USA", 90.0));
		list.add(new PieModel("UK", 98.0));
		list.add(new PieModel("Germany", 100.0));
		mv.addObject("colData",new Gson().toJson(list));
		return mv;
	}

//Chart with Gson + Ajax	
	@RequestMapping(value="combChart", method=RequestMethod.GET)
	public ModelAndView showCombChartPage() {
		ModelAndView mv= new ModelAndView("combined");
		List<PieModel> list= new ArrayList<>();
		list.add(new PieModel("Pakistan", 9.0));
		list.add(new PieModel("Ireland", 40.0));
		list.add(new PieModel("USA", 90.0));
		list.add(new PieModel("UK", 98.0));
		list.add(new PieModel("Germany", 100.0));
		mv.addObject("combData",new Gson().toJson(list));
		return mv;
	}

}
