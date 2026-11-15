rgs = {
    rg1={ 
        name="raj12"
        location="central india" 
    }
}

vnet = {
    vnet1={
        name="vnet12"
        resource_group_name="raj12"
        location="central india"
        address_space=["10.0.0.0/16"]
    }
}
subnet ={
    subnet1= {
    name="subnet12"
    resource_group_name="raj12"
    virtual_network_name="vnet12"
    address_prefixes=["10.0.1.0/24"]
    }
    subnet2={
         name="subnet13"
         resource_group_name="raj12" 
         virtual_network_name="vnet12"
         address_prefixes=["10.0.2.0/24"]
    }
    subnet3={
         name="subnet14"
         resource_group_name="raj12" 
         virtual_network_name="vnet12"
         address_prefixes=["10.0.3.0/24"]
    }
     subnet4={
         name="subnet15"
         resource_group_name="raj12" 
         virtual_network_name="vnet12"
         address_prefixes=["10.0.4.0/24"]
    }
    subnet5={
         name="subnet16"
         resource_group_name="raj12" 
         virtual_network_name="vnet12"
         address_prefixes=["10.0.5.0/24"]
    }

}
