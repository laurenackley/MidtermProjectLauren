package com.skilldistillery.sip.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.sip.data.BeerDao;
import com.skilldistillery.sip.entities.Beer;

@Controller
public class BeerController {

	@Autowired
	private BeerDao beerDao;
	
	@RequestMapping("beer.do")
	public String createBeer(Beer beer, Model model) {
		beerDao.createBeer(beer);
		model.addAttribute("beer", beer);
		return "beer";
	}
	
	@RequestMapping("selectBeer.do")
	public String selectBeer() {
		return "beer";
	}
}