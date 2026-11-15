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
    virtul_network_name="vnet12"
    address_space=["10.0.1.0/24"]
}
}