
package wsmodel;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for answerClass complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="answerClass"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="answerId" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="answerContent" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="answerDate" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="questionId2" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="answerUserId" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *         &lt;element name="answerVote" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "answerClass", propOrder = {
    "answerId",
    "answerContent",
    "answerDate",
    "questionId2",
    "answerUserId",
    "answerVote"
})
public class AnswerClass {

    protected int answerId;
    protected String answerContent;
    protected String answerDate;
    protected int questionId2;
    protected int answerUserId;
    protected int answerVote;

    /**
     * Gets the value of the answerId property.
     * 
     */
    public int getAnswerId() {
        return answerId;
    }

    /**
     * Sets the value of the answerId property.
     * 
     */
    public void setAnswerId(int value) {
        this.answerId = value;
    }

    /**
     * Gets the value of the answerContent property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAnswerContent() {
        return answerContent;
    }

    /**
     * Sets the value of the answerContent property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAnswerContent(String value) {
        this.answerContent = value;
    }

    /**
     * Gets the value of the answerDate property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAnswerDate() {
        return answerDate;
    }

    /**
     * Sets the value of the answerDate property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAnswerDate(String value) {
        this.answerDate = value;
    }

    /**
     * Gets the value of the questionId2 property.
     * 
     */
    public int getQuestionId2() {
        return questionId2;
    }

    /**
     * Sets the value of the questionId2 property.
     * 
     */
    public void setQuestionId2(int value) {
        this.questionId2 = value;
    }

    /**
     * Gets the value of the answerUserId property.
     * 
     */
    public int getAnswerUserId() {
        return answerUserId;
    }

    /**
     * Sets the value of the answerUserId property.
     * 
     */
    public void setAnswerUserId(int value) {
        this.answerUserId = value;
    }

    /**
     * Gets the value of the answerVote property.
     * 
     */
    public int getAnswerVote() {
        return answerVote;
    }

    /**
     * Sets the value of the answerVote property.
     * 
     */
    public void setAnswerVote(int value) {
        this.answerVote = value;
    }

}