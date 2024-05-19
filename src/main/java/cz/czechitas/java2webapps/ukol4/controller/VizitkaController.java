package cz.czechitas.java2webapps.ukol4.controller;

import cz.czechitas.java2webapps.ukol4.entity.Vizitka;
import cz.czechitas.java2webapps.ukol4.service.VizitkaService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {
    private final VizitkaService service;

    public VizitkaController(VizitkaService service) {
        this.service = service;
    }

    private final List<Vizitka> seznamVizitek = new ArrayList<>();


    @GetMapping("/")
    public ModelAndView seznam() {
        ModelAndView result = new ModelAndView("seznam");
        result.addObject("vizitky", service.getAll());
        return result;
    }

    @GetMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id) {
        ModelAndView result = new ModelAndView("detail");
        result.addObject("vizitka", service.getById(id));
        return result;
    }

    @PostMapping("/nova")
    public String create(Vizitka vizitka) {
        service.create(vizitka);
        return "redirect:/";
    }

    @PostMapping("/delete")
    public String delete(int id) {
        service.deleteById(id);
        return "redirect:/";
    }
}
