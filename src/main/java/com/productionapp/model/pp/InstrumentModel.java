package com.productionapp.model.pp;

public class InstrumentModel {
	
	private String instrumentName;
	private String instrumentRange;
	private String instrumentAccuracy;
	private String	instrumentQty ;

	
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
