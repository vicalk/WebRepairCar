package com.repair.car.controller;

import com.repair.car.converters.RepairConverter;
import com.repair.car.domain.Repair;
import com.repair.car.model.RepairCreateForm;
import com.repair.car.model.RepairSearchForm;
import com.repair.car.services.RepairService;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class RepairController {

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(RepairController.class);
    private static final String REPAIR_CREATE_FORM = "repairCreateForm";
    private static final String REPAIR_SEARCH_FORM = "repairSearchForm";
    private static final String REPAIR_LIST = "repairList";

    private RepairService repairService;

    @RequestMapping(value = "/admin/repairCreate", method = RequestMethod.GET)
    public String repairCreate(Model model) {
        model.addAttribute(REPAIR_CREATE_FORM, new RepairCreateForm());
        return "repairCreate";     //repairCreate.ftl
    }

   @RequestMapping(value = "/admin/repairCreate", method = RequestMethod.POST)
   public String repairCreate(Model model,
                                @ModelAttribute(REPAIR_CREATE_FORM) RepairCreateForm repairCreateForm,
                                 BindingResult bindingResult,
                                 HttpSession session,
                                 RedirectAttributes redirectAttributes) {

       if (bindingResult.hasErrors()) {

           logger.error(String.format("%s Validation Errors present: ", bindingResult.getErrorCount()));
           model.addAttribute(REPAIR_CREATE_FORM, repairCreateForm);
           return "redirect:/admin/repairCreate";
       }

       try {
           repairService.repairCreate(repairCreateForm);
           redirectAttributes.addFlashAttribute("success", true);



       } catch (Exception exception) {
           redirectAttributes.addFlashAttribute("error", true);
           logger.error("Repair Creation failed: " + exception);

       }

       return "redirect:/admin/repairCreate";
   }

    @RequestMapping(value = "/admin/repairSearch", method = RequestMethod.GET)
    public String repairSearch(Model model) {
        model.addAttribute(REPAIR_SEARCH_FORM, new RepairSearchForm());
       // model.addAttribute(REPAIR_LIST,repairService.findAllRepairs());
        System.err.println("get");

        return "repairSearch";
    }



    @RequestMapping(value = "/admin/repairSearch", method = RequestMethod.POST)
    public String repairSearch(Model model,
                               @ModelAttribute(REPAIR_SEARCH_FORM) RepairSearchForm repairSearchForm,
                               HttpSession session,
                               RedirectAttributes redirectAttributes) {

        List<RepairCreateForm> repairList = repairService.repairSearch(repairSearchForm.getSearchText(),repairSearchForm.getSearchType());
        if (repairList.isEmpty()) {
            redirectAttributes.addFlashAttribute("errorMessage", "No Repairs found");
            System.err.println("empty");
        }
        model.addAttribute(REPAIR_LIST, repairList );
        return "repairSearch";
    }



}
