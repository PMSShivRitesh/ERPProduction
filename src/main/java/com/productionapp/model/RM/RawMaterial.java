package com.productionapp.model.RM;

public class RawMaterial {
private String shapeName; 
private String shapeParameter; 
private String shapeDimension;
public String getShapeName() {
	return shapeName;
}
public void setShapeName(String shapeName) {
	this.shapeName = shapeName;
}
public String getShapeParameter() {
	return shapeParameter;
}
public void setShapeParameter(String shapeParameter) {
	this.shapeParameter = shapeParameter;
}
public String getShapeDimension() {
	return shapeDimension;
}
public void setShapeDimension(String shapeDimension) {
	this.shapeDimension = shapeDimension;
}

@Override
public String toString(){
	 return "shapeName:" + shapeName+"shapeParameter:" +shapeParameter+"shapeDimension" + shapeDimension;
}

}
