package cz.slezacek.etnetera.discount.service;

import cz.slezacek.etnetera.discount.exception.NoSuchCodeFound;
import cz.slezacek.etnetera.discount.model.Code;
import cz.slezacek.etnetera.discount.model.Event;
import org.apache.commons.lang3.RandomStringUtils;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CodeServiceImpl implements CodeService {

    @Override
    public Code findCodeByCodeValueAndEvent(Event event, String codeValue) throws NoSuchCodeFound {
        TypedQuery<Code> matchingCodesQuery;

        matchingCodesQuery = Code.findCodesByEventAndCodeValueEquals(event, codeValue);

        try{
            return matchingCodesQuery.getSingleResult();
        }
        catch (NoResultException e){
            throw new NoSuchCodeFound(e);
        }
    }

    @Override
    public List<Code> findCodesByEventAndPhonenumberIsNull(Event event) {
        TypedQuery<Code> codesQuery;

        codesQuery = Code.findCodesByEventAndPhonenumberIsNull(event);
        return codesQuery.getResultList();
    }

    @Override
    public List<Code> generateCodesForEvent(Event event, int numberOfGeneratedCodes, int lengthOfCode, Date codeValidDate) {
        List<Code> generatedCodes = new ArrayList<Code>(numberOfGeneratedCodes);
        Code code;
        for(int i = 1; i < numberOfGeneratedCodes; i++ ){
            code = new Code();

            code.setCodeValue(generateCodeValue(lengthOfCode));
            code.setCodeLength(lengthOfCode);
            code.setValidUntil(codeValidDate);

            code.setEvent(event);

            this.saveCode(code);
            generatedCodes.add(code);
        }
        return generatedCodes;
    }

    private String generateCodeValue(int length){
        return RandomStringUtils.random(length);
    }
}
