// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import java.lang.String;

privileged aspect PIIRIVALVUR_Roo_ToString {
    
    public String PIIRIVALVUR.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AUASTME_MUUTMINE: ").append(getAUASTME_MUUTMINE() == null ? "null" : getAUASTME_MUUTMINE().size()).append(", ");
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud()).append(", ");
        sb.append("Eesnimed: ").append(getEesnimed()).append(", ");
        sb.append("Isikukood: ").append(getIsikukood()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("PIIRIVALVURI_KONTAKT: ").append(getPIIRIVALVURI_KONTAKT() == null ? "null" : getPIIRIVALVURI_KONTAKT().size()).append(", ");
        sb.append("PIIRIVALVUR_INTSIDENDIS: ").append(getPIIRIVALVUR_INTSIDENDIS() == null ? "null" : getPIIRIVALVUR_INTSIDENDIS().size()).append(", ");
        sb.append("PIIRIVALVUR_PIIRIPUNKTIS: ").append(getPIIRIVALVUR_PIIRIPUNKTIS() == null ? "null" : getPIIRIVALVUR_PIIRIPUNKTIS().size()).append(", ");
        sb.append("PIIRIVALVUR_PIIRIPUNKTIS_1: ").append(getPIIRIVALVUR_PIIRIPUNKTIS_1() == null ? "null" : getPIIRIVALVUR_PIIRIPUNKTIS_1().size()).append(", ");
        sb.append("PIIRIVALVUR_VAEOSAS: ").append(getPIIRIVALVUR_VAEOSAS() == null ? "null" : getPIIRIVALVUR_VAEOSAS().size()).append(", ");
        sb.append("PIIRIVALVUR_VOODIKOHAL: ").append(getPIIRIVALVUR_VOODIKOHAL() == null ? "null" : getPIIRIVALVUR_VOODIKOHAL().size()).append(", ");
        sb.append("Perekonnanimi: ").append(getPerekonnanimi()).append(", ");
        sb.append("Piirivalvur_id: ").append(getPiirivalvur_id()).append(", ");
        sb.append("SEOTUD_KONTAKTISIK: ").append(getSEOTUD_KONTAKTISIK() == null ? "null" : getSEOTUD_KONTAKTISIK().size()).append(", ");
        sb.append("Soduri_kood: ").append(getSoduri_kood()).append(", ");
        sb.append("Sugu: ").append(getSugu()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("VAHTKONNA_LIIGE: ").append(getVAHTKONNA_LIIGE() == null ? "null" : getVAHTKONNA_LIIGE().size()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
