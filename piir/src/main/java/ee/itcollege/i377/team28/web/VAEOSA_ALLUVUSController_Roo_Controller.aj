// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.VAEOSA;
import ee.itcollege.i377.team28.entities.VAEOSA_ALLUVUS;
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

privileged aspect VAEOSA_ALLUVUSController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String VAEOSA_ALLUVUSController.create(@Valid VAEOSA_ALLUVUS VAEOSA_ALLUVUS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("VAEOSA_ALLUVUS", VAEOSA_ALLUVUS);
            addDateTimeFormatPatterns(uiModel);
            return "vaeosa_alluvus/create";
        }
        uiModel.asMap().clear();
        VAEOSA_ALLUVUS.persist();
        return "redirect:/vaeosa_alluvus/" + encodeUrlPathSegment(VAEOSA_ALLUVUS.getVaeosa_alluvus_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String VAEOSA_ALLUVUSController.createForm(Model uiModel) {
        uiModel.addAttribute("VAEOSA_ALLUVUS", new VAEOSA_ALLUVUS());
        addDateTimeFormatPatterns(uiModel);
        return "vaeosa_alluvus/create";
    }
    
    @RequestMapping(value = "/{vaeosa_alluvus_id}", method = RequestMethod.GET)
    public String VAEOSA_ALLUVUSController.show(@PathVariable("vaeosa_alluvus_id") Long vaeosa_alluvus_id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("vaeosa_alluvus", VAEOSA_ALLUVUS.findVAEOSA_ALLUVUS(vaeosa_alluvus_id));
        uiModel.addAttribute("itemId", vaeosa_alluvus_id);
        return "vaeosa_alluvus/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String VAEOSA_ALLUVUSController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("vaeosa_alluvus", VAEOSA_ALLUVUS.findVAEOSA_ALLUVUSEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) VAEOSA_ALLUVUS.countVAEOSA_ALLUVUS() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("vaeosa_alluvus", VAEOSA_ALLUVUS.findAllVAEOSA_ALLUVUS());
        }
        addDateTimeFormatPatterns(uiModel);
        return "vaeosa_alluvus/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String VAEOSA_ALLUVUSController.update(@Valid VAEOSA_ALLUVUS VAEOSA_ALLUVUS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("VAEOSA_ALLUVUS", VAEOSA_ALLUVUS);
            addDateTimeFormatPatterns(uiModel);
            return "vaeosa_alluvus/update";
        }
        uiModel.asMap().clear();
        VAEOSA_ALLUVUS.merge();
        return "redirect:/vaeosa_alluvus/" + encodeUrlPathSegment(VAEOSA_ALLUVUS.getVaeosa_alluvus_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{vaeosa_alluvus_id}", params = "form", method = RequestMethod.GET)
    public String VAEOSA_ALLUVUSController.updateForm(@PathVariable("vaeosa_alluvus_id") Long vaeosa_alluvus_id, Model uiModel) {
        uiModel.addAttribute("VAEOSA_ALLUVUS", VAEOSA_ALLUVUS.findVAEOSA_ALLUVUS(vaeosa_alluvus_id));
        addDateTimeFormatPatterns(uiModel);
        return "vaeosa_alluvus/update";
    }
    
    @RequestMapping(value = "/{vaeosa_alluvus_id}", method = RequestMethod.DELETE)
    public String VAEOSA_ALLUVUSController.delete(@PathVariable("vaeosa_alluvus_id") Long vaeosa_alluvus_id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        VAEOSA_ALLUVUS.findVAEOSA_ALLUVUS(vaeosa_alluvus_id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/vaeosa_alluvus";
    }
    
    @ModelAttribute("vaeosas")
    public Collection<VAEOSA> VAEOSA_ALLUVUSController.populateVAEOSAS() {
        return VAEOSA.findAllVAEOSAS();
    }
    
    @ModelAttribute("vaeosa_alluvus")
    public Collection<VAEOSA_ALLUVUS> VAEOSA_ALLUVUSController.populateVAEOSA_ALLUVUS() {
        return VAEOSA_ALLUVUS.findAllVAEOSA_ALLUVUS();
    }
    
    void VAEOSA_ALLUVUSController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("VAEOSA_ALLUVUS_alates_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("VAEOSA_ALLUVUS_kuni_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("VAEOSA_ALLUVUS_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("VAEOSA_ALLUVUS_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("VAEOSA_ALLUVUS_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String VAEOSA_ALLUVUSController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
