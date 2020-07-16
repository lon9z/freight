package com.lyzzz.service;

import com.lyzzz.pojo.InvoiceC;
    /**
@location：  freight\com.lyzzz.service  
@creatTime:   2020/7/13  11:35
@author:  Administrator
@remark:

*/
public interface InvoiceCService{


    int deleteByPrimaryKey(String invoiceId);

    int insert(InvoiceC record);

    int insertSelective(InvoiceC record);

    InvoiceC selectByPrimaryKey(String invoiceId);

    int updateByPrimaryKeySelective(InvoiceC record);

    int updateByPrimaryKey(InvoiceC record);

        void createInvoice(InvoiceC invoiceC);

        void submitInvoice(String packingListId);

        void cancelFinanceC(String packingListId);
    }
