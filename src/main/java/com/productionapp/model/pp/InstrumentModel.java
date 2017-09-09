package com.productionapp.model.pp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="InstrumentDetail")
public class InstrumentModel {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="instrumentId")
	private int instrumentId;
	@Column(name="instrumentName")
	private String instrumentName;
	@Column(name="instrumentRange")
	private String instrumentRange;
	@Column(name="instrumentAccuracy")
	private String instrumentAccuracy;
	@Column(name="instrumentQty")
	private String	instrumentQty ;

	public int getInstrumentId() {
		return instrumentId;
	}

	public void setInstrumentId(int instrumentId) {
		this.instrumentId = instrumentId;
	}
	public String getInstrumentName() {
		return instrumentName;
	}
	
	public void setInstrumentName(String instrumentName)
	{
		this.instrumentName=instrumentName;
	}

	
	public String getInstrumentRange() {
		return instrumentRange;
	}

	public void setInstrumentRange(String instrumentRange) {
		this.instrumentRange = instrumentRange;
	}

	public String getInstrumentAccuracy() {
		return instrumentAccuracy;
	}

	public void setInstrumentAccuracy(String instrumentAccuracy) {
		this.instrumentAccuracy = instrumentAccuracy;
	}

	public String getInstrumentQty() {
		return instrumentQty;
	}

	public void setInstrumentQty(String instrumentQty) {
		this.instrumentQty = instrumentQty;
	}

	
}
