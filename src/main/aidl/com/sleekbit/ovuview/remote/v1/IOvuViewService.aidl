// v1 IOvuViewService.aidl
package com.sleekbit.ovuview.remote.v1;

// we have to declare import statements even of our own package
import com.sleekbit.ovuview.remote.v1.DataSetInfo;
import com.sleekbit.ovuview.remote.v1.TemperatureSymptomValue;
import com.sleekbit.ovuview.remote.v1.ResultStatus;


/**
 * OvuView bound remote service.
 */
interface IOvuViewService {

    /**
     * @return all configured owned datasets on this device
     */
    List<DataSetInfo> getOwnedDataSets(out ResultStatus resultStatus);

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // dataset methods
    //

    /**
     * Set the builtin temperature symptom.
     *
     * @param datasetId identifies the dataset
     * @param value encloses complete information about the value to be set
     * @param resultStatus result status of the operation (contains status code and futher info)
     */
    void setTemperatureSymptom(String dataSetId, int date, in TemperatureSymptomValue value, out ResultStatus resultStatus);

    /**
     * Retrieve temperature symptom value on the given date.
     *
     * @param datasetId identifies the dataset
     * @param date identifies the date
     * @param resultStatus result status of the operation (contains status code and futher info)
     * @return complete information about temperature symptom
     */
    TemperatureSymptomValue getTemperatureSymptom(String dataSetId, int date, out ResultStatus resultStatus);

}
