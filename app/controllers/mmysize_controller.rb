class MmysizeController < ApplicationController
  def avgsize
  end

  def brandsize
  end

  def inputsize
    @sizedicinf = Brandlist.where(:brandname => $brandname)
    @sizedicinfo = CategoryTop.where(:brandlist_id => @sizedicinf, :division => $category)
  end

  def datawrite
    $brandname = params[:bsel]
    $category = params[:csel]

    @sizedata = Sizedatum.new
    @sizedata.brandname = $brandname
    @sizedata.division = $category
    @sizedata.save

    @sizedata_spec = Sizedatum.where(:brandname => $brandname, :division => $category, :productname => nil)
    @sizedata_spec.productname = params(:pname)

  end
end
