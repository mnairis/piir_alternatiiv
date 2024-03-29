// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.OBJEKT;
import ee.itcollege.i377.team28.entities.OBJEKTI_LIIK;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect OBJEKTI_LIIKController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String OBJEKTI_LIIKController.create(@Valid OBJEKTI_LIIK OBJEKTI_LIIK, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("OBJEKTI_LIIK", OBJEKTI_LIIK);
            addDateTimeFormatPatterns(uiModel);
            return "objekti_liiks/create";
        }
        uiModel.asMap().clear();
        OBJEKTI_LIIK.persist();
        return "redirect:/objekti_liiks/" + encodeUrlPathSegment(OBJEKTI_LIIK.getObjekti_liik_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String OBJEKTI_LIIKController.createForm(Model uiModel) {
        uiModel.addAttribute("OBJEKTI_LIIK", new OBJEKTI_LIIK());
        addDateTimeFormatPatterns(uiModel);
        return "objekti_liiks/create";
    }
    
    @RequestMapping(value = "/{objekti_liik_id}", method = RequestMethod.GET)
    public String OBJEKTI_LIIKController.show(@PathVariable("objekti_liik_id") Long objekti_liik_id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("objekti_liik", OBJEKTI_LIIK.findOBJEKTI_LIIK(objekti_liik_id));
        uiModel.addAttribute("itemId", objekti_liik_id);
        return "objekti_liiks/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String OBJEKTI_LIIKController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("objekti_liiks", OBJEKTI_LIIK.findOBJEKTI_LIIKEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) OBJEKTI_LIIK.countOBJEKTI_LIIKs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("objekti_liiks", OBJEKTI_LIIK.findAllOBJEKTI_LIIKs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "objekti_liiks/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String OBJEKTI_LIIKController.update(@Valid OBJEKTI_LIIK OBJEKTI_LIIK, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("OBJEKTI_LIIK", OBJEKTI_LIIK);
            addDateTimeFormatPatterns(uiModel);
            return "objekti_liiks/update";
        }
        uiModel.asMap().clear();
        OBJEKTI_LIIK.merge();
        return "redirect:/objekti_liiks/" + encodeUrlPathSegment(OBJEKTI_LIIK.getObjekti_liik_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{objekti_liik_id}", params = "form", method = RequestMethod.GET)
    public String OBJEKTI_LIIKController.updateForm(@PathVariable("objekti_liik_id") Long objekti_liik_id, Model uiModel) {
        uiModel.addAttribute("OBJEKTI_LIIK", OBJEKTI_LIIK.findOBJEKTI_LIIK(objekti_liik_id));
        addDateTimeFormatPatterns(uiModel);
        return "objekti_liiks/update";
    }
    
    @RequestMapping(value = "/{objekti_liik_id}", method = RequestMethod.DELETE)
    public String OBJEKTI_LIIKController.delete(@PathVariable("objekti_liik_id") Long objekti_liik_id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        OBJEKTI_LIIK.findOBJEKTI_LIIK(objekti_liik_id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/objekti_liiks";
    }
    
    @ModelAttribute("objekts")
    public Collection<OBJEKT> OBJEKTI_LIIKController.populateOBJEKTS() {
        return OBJEKT.findAllOBJEKTS();
    }
    
    @ModelAttribute("objekti_liiks")
    public Collection<OBJEKTI_LIIK> OBJEKTI_LIIKController.populateOBJEKTI_LIIKs() {
        return OBJEKTI_LIIK.findAllOBJEKTI_LIIKs();
    }
    
    void OBJEKTI_LIIKController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("OBJEKTI_LIIK_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("OBJEKTI_LIIK_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("OBJEKTI_LIIK_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String OBJEKTI_LIIKController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
