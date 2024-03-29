// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.slezacek.etnetera.discount.model;

import cz.slezacek.etnetera.discount.model.PhonenumberDataOnDemand;
import cz.slezacek.etnetera.discount.model.PhonenumberIntegrationTest;
import cz.slezacek.etnetera.discount.service.PhonenumberService;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PhonenumberIntegrationTest_Roo_IntegrationTest {
    
    declare @type: PhonenumberIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: PhonenumberIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: PhonenumberIntegrationTest: @Transactional;
    
    @Autowired
    PhonenumberDataOnDemand PhonenumberIntegrationTest.dod;
    
    @Autowired
    PhonenumberService PhonenumberIntegrationTest.phonenumberService;
    
    @Test
    public void PhonenumberIntegrationTest.testCountAllPhonenumbers() {
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to initialize correctly", dod.getRandomPhonenumber());
        long count = phonenumberService.countAllPhonenumbers();
        Assert.assertTrue("Counter for 'Phonenumber' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void PhonenumberIntegrationTest.testFindPhonenumber() {
        Phonenumber obj = dod.getRandomPhonenumber();
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to provide an identifier", id);
        obj = phonenumberService.findPhonenumber(id);
        Assert.assertNotNull("Find method for 'Phonenumber' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Phonenumber' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void PhonenumberIntegrationTest.testFindAllPhonenumbers() {
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to initialize correctly", dod.getRandomPhonenumber());
        long count = phonenumberService.countAllPhonenumbers();
        Assert.assertTrue("Too expensive to perform a find all test for 'Phonenumber', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Phonenumber> result = phonenumberService.findAllPhonenumbers();
        Assert.assertNotNull("Find all method for 'Phonenumber' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Phonenumber' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void PhonenumberIntegrationTest.testFindPhonenumberEntries() {
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to initialize correctly", dod.getRandomPhonenumber());
        long count = phonenumberService.countAllPhonenumbers();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Phonenumber> result = phonenumberService.findPhonenumberEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Phonenumber' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Phonenumber' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void PhonenumberIntegrationTest.testFlush() {
        Phonenumber obj = dod.getRandomPhonenumber();
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to provide an identifier", id);
        obj = phonenumberService.findPhonenumber(id);
        Assert.assertNotNull("Find method for 'Phonenumber' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyPhonenumber(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Phonenumber' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PhonenumberIntegrationTest.testUpdatePhonenumberUpdate() {
        Phonenumber obj = dod.getRandomPhonenumber();
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to provide an identifier", id);
        obj = phonenumberService.findPhonenumber(id);
        boolean modified =  dod.modifyPhonenumber(obj);
        Integer currentVersion = obj.getVersion();
        Phonenumber merged = phonenumberService.updatePhonenumber(obj);
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Phonenumber' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PhonenumberIntegrationTest.testSavePhonenumber() {
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to initialize correctly", dod.getRandomPhonenumber());
        Phonenumber obj = dod.getNewTransientPhonenumber(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Phonenumber' identifier to be null", obj.getId());
        try {
            phonenumberService.savePhonenumber(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        obj.flush();
        Assert.assertNotNull("Expected 'Phonenumber' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void PhonenumberIntegrationTest.testDeletePhonenumber() {
        Phonenumber obj = dod.getRandomPhonenumber();
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Phonenumber' failed to provide an identifier", id);
        obj = phonenumberService.findPhonenumber(id);
        phonenumberService.deletePhonenumber(obj);
        obj.flush();
        Assert.assertNull("Failed to remove 'Phonenumber' with identifier '" + id + "'", phonenumberService.findPhonenumber(id));
    }
    
}
