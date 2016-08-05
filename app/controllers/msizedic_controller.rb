class MsizedicController < ApplicationController
  def branddic
    if $category == "shirts" || $category == "tshirts" || $category == "knit"
      @productsel = CategoryTop.where(division:$category)
    elsif $category == "pants" || $category == "jeans"
      @productsel = CategoryBottom.where(division:$category)
    end

    @showres = Brandlist.where(:brandname => $brandname)
    if $category == "shirts"
      @showresu = CategoryTop.where(:brandlist_id => @showres)
      @showresult = ShirtsSize.where(:categorytop_id => @showresu)
    elsif $category == "tshirts"
      @showresu = CategoryTop.where(:brandlist_id => @showres)
      @showresult = TshirtsSize.where(:categorytop_id => @showresu)
    elsif $category == "knit"
      @showresu = CategoryTop.where(:brandlist_id => @showres)
      @showresult = KnitSize.where(:categorytop_id => @showresu)
    elsif $category == "pants"
      @showresu = CategoryBottom.where(:brandlist_id => @showres)
      @showresult = PantsSize.where(:categorybottom_id => @showresu)
    elsif $category == "jeans"
      @showresu = CategoryBottom.where(:brandlist_id => @showres)
      @showresult = JeansSize.where(:categorybottom_id => @showresu)
    end
  end

  def datashow
    $brandname = params[:bsel]
    $category = params[:csel]
    $pselect = params[:psel]
  end


  def transfersize
  end

  def inputbrand
  end

  def datainput
    @brandlists_name = Brandlist.where(brandname:$brandname)

    if $category == "shirts" || $category == "tshirts" || $category == "knit"
      @category_div = CategoryTop.where(brandlist_id:nil)
    elsif $category == "pants" || $category == "jeans"
      @category_div = CategoryBottom.where(brandlist_id:nil)
    end

  end

  def datawrite
    $brandname = params[:bsel]
    $category = params[:csel]
    $proname = params[:productname]

    if $category == "shirts" || $category == "tshirts" || $category == "knit"
      categorytop = CategoryTop.new
      categorytop.division = $category
      categorytop.productname = $proname
      categorytop.save
    elsif $category == "pants" || $category == "jeans"
      categorybottom = CategoryBottom.new
      categorybottom.division = $category
      categorybottom.productname = $proname
      categorybottom.save
    end
  end

  def datawrite2

    if $category == "shirts" || $category == "tshirts" || $category == "knit"
      @category1 = CategoryTop.find(params[:id_of_category])  #만약 에러나면 @category 를 @categorytop으로 바꿔보자..
      @category1.brandlist_id = params[:id_of_brandlist]
      @category1.save
    elsif $category == "pants" || $category == "jeans"
      @category2 = CategoryBottom.find(params[:id_of_category])  #만약 에러나면 @category 를 @categorytop으로 바꿔보자..
      @category2.brandlist_id = params[:id_of_brandlist]
      @category2.save
    end

    if $category == "shirts"
      ShirtsSize.create(sizename:"XS", corsize:params[:xscornum], chestwidth:params[:xschest], shoulderwidth:params[:xsshoulder], totallength:params[:xslength], sleeve:params[:xssleeve], categorytop_id:params[:id_of_category])
      ShirtsSize.create(sizename:"S", corsize:params[:scornum], chestwidth:params[:schest], shoulderwidth:params[:sshoulder], totallength:params[:slength], sleeve:params[:ssleeve], categorytop_id:params[:id_of_category])
      ShirtsSize.create(sizename:"M", corsize:params[:mcornum], chestwidth:params[:mchest], shoulderwidth:params[:mshoulder], totallength:params[:mlength], sleeve:params[:msleeve], categorytop_id:params[:id_of_category])
      ShirtsSize.create(sizename:"L", corsize:params[:lcornum], chestwidth:params[:lchest], shoulderwidth:params[:lshoulder], totallength:params[:llength], sleeve:params[:lsleeve], categorytop_id:params[:id_of_category])
      ShirtsSize.create(sizename:"XL", corsize:params[:xlcornum], chestwidth:params[:xlchest], shoulderwidth:params[:xlshoulder], totallength:params[:xllength], sleeve:params[:xlsleeve], categorytop_id:params[:id_of_category])
      ShirtsSize.create(sizename:"XXL", corsize:params[:xxlcornum], chestwidth:params[:xxlchest], shoulderwidth:params[:xxlshoulder], totallength:params[:xxllength], sleeve:params[:xxlsleeve], categorytop_id:params[:id_of_category])

    elsif $category == "tshirts"
      TshirtsSize.create(sizename:"XS", corsize:params[:xscornum], chestwidth:params[:xschest], shoulderwidth:params[:xsshoulder], totallength:params[:xslength], sleeve:params[:xssleeve], categorytop_id:params[:id_of_category])
      TshirtsSize.create(sizename:"S", corsize:params[:scornum], chestwidth:params[:schest], shoulderwidth:params[:sshoulder], totallength:params[:slength], sleeve:params[:ssleeve], categorytop_id:params[:id_of_category])
      TshirtsSize.create(sizename:"M", corsize:params[:mcornum], chestwidth:params[:mchest], shoulderwidth:params[:mshoulder], totallength:params[:mlength], sleeve:params[:msleeve], categorytop_id:params[:id_of_category])
      TshirtsSize.create(sizename:"L", corsize:params[:lcornum], chestwidth:params[:lchest], shoulderwidth:params[:lshoulder], totallength:params[:llength], sleeve:params[:lsleeve], categorytop_id:params[:id_of_category])
      TshirtsSize.create(sizename:"XL", corsize:params[:xlcornum], chestwidth:params[:xlchest], shoulderwidth:params[:xlshoulder], totallength:params[:xllength], sleeve:params[:xlsleeve], categorytop_id:params[:id_of_category])
      TshirtsSize.create(sizename:"XXL", corsize:params[:xxlcornum], chestwidth:params[:xxlchest], shoulderwidth:params[:xxlshoulder], totallength:params[:xxllength], sleeve:params[:xxlsleeve], categorytop_id:params[:id_of_category])

    elsif $category == "knit"
      KnitSize.create(sizename:"XS", corsize:params[:xscornum], chestwidth:params[:xschest], shoulderwidth:params[:xsshoulder], totallength:params[:xslength], sleeve:params[:xssleeve], categorytop_id:params[:id_of_category])
      KnitSize.create(sizename:"S", corsize:params[:scornum], chestwidth:params[:schest], shoulderwidth:params[:sshoulder], totallength:params[:slength], sleeve:params[:ssleeve], categorytop_id:params[:id_of_category])
      KnitSize.create(sizename:"M", corsize:params[:mcornum], chestwidth:params[:mchest], shoulderwidth:params[:mshoulder], totallength:params[:mlength], sleeve:params[:msleeve], categorytop_id:params[:id_of_category])
      KnitSize.create(sizename:"L", corsize:params[:lcornum], chestwidth:params[:lchest], shoulderwidth:params[:lshoulder], totallength:params[:llength], sleeve:params[:lsleeve], categorytop_id:params[:id_of_category])
      KnitSize.create(sizename:"XL", corsize:params[:xlcornum], chestwidth:params[:xlchest], shoulderwidth:params[:xlshoulder], totallength:params[:xllength], sleeve:params[:xlsleeve], categorytop_id:params[:id_of_category])
      KnitSize.create(sizename:"XXL", corsize:params[:xxlcornum], chestwidth:params[:xxlchest], shoulderwidth:params[:xxlshoulder], totallength:params[:xxllength], sleeve:params[:xxlsleeve], categorytop_id:params[:id_of_category])

    elsif $category == "pants"
      PantsSize.create(sizename:"28", corsize:params[:cornum28], waistwidth:params[:waist28], hipwidth:params[:hip28], thighwidth:params[:thigh28], raiselength:params[:raise28], hemwidth:params[:hem28], totallength:params[:length28], categorybottom_id:params[:id_of_category])
      PantsSize.create(sizename:"29", corsize:params[:cornum29], waistwidth:params[:waist29], hipwidth:params[:hip29], thighwidth:params[:thigh29], raiselength:params[:raise29], hemwidth:params[:hem29], totallength:params[:length29], categorybottom_id:params[:id_of_category])
      PantsSize.create(sizename:"30", corsize:params[:cornum30], waistwidth:params[:waist30], hipwidth:params[:hip30], thighwidth:params[:thigh30], raiselength:params[:raise30], hemwidth:params[:hem30], totallength:params[:length30], categorybottom_id:params[:id_of_category])
      PantsSize.create(sizename:"31", corsize:params[:cornum31], waistwidth:params[:waist31], hipwidth:params[:hip31], thighwidth:params[:thigh31], raiselength:params[:raise31], hemwidth:params[:hem31], totallength:params[:length31], categorybottom_id:params[:id_of_category])
      PantsSize.create(sizename:"32", corsize:params[:cornum32], waistwidth:params[:waist32], hipwidth:params[:hip32], thighwidth:params[:thigh32], raiselength:params[:raise32], hemwidth:params[:hem32], totallength:params[:length32], categorybottom_id:params[:id_of_category])
      PantsSize.create(sizename:"33", corsize:params[:cornum33], waistwidth:params[:waist33], hipwidth:params[:hip33], thighwidth:params[:thigh33], raiselength:params[:raise33], hemwidth:params[:hem33], totallength:params[:length33], categorybottom_id:params[:id_of_category])
      PantsSize.create(sizename:"34", corsize:params[:cornum34], waistwidth:params[:waist34], hipwidth:params[:hip34], thighwidth:params[:thigh34], raiselength:params[:raise34], hemwidth:params[:hem34], totallength:params[:length34], categorybottom_id:params[:id_of_category])
      PantsSize.create(sizename:"35", corsize:params[:cornum35], waistwidth:params[:waist35], hipwidth:params[:hip35], thighwidth:params[:thigh35], raiselength:params[:raise35], hemwidth:params[:hem35], totallength:params[:length35], categorybottom_id:params[:id_of_category])
      PantsSize.create(sizename:"36", corsize:params[:cornum36], waistwidth:params[:waist36], hipwidth:params[:hip36], thighwidth:params[:thigh36], raiselength:params[:raise36], hemwidth:params[:hem36], totallength:params[:length36], categorybottom_id:params[:id_of_category])

    elsif $category == "jeans"
      JeansSize.create(sizename:"28", corsize:params[:cornum28], waistwidth:params[:waist28], hipwidth:params[:hip28], thighwidth:params[:thigh28], raiselength:params[:raise28], hemwidth:params[:hem28], totallength:params[:length28], categorybottom_id:params[:id_of_category])
      JeansSize.create(sizename:"29", corsize:params[:cornum29], waistwidth:params[:waist29], hipwidth:params[:hip29], thighwidth:params[:thigh29], raiselength:params[:raise29], hemwidth:params[:hem29], totallength:params[:length29], categorybottom_id:params[:id_of_category])
      JeansSize.create(sizename:"30", corsize:params[:cornum30], waistwidth:params[:waist30], hipwidth:params[:hip30], thighwidth:params[:thigh30], raiselength:params[:raise30], hemwidth:params[:hem30], totallength:params[:length30], categorybottom_id:params[:id_of_category])
      JeansSize.create(sizename:"31", corsize:params[:cornum31], waistwidth:params[:waist31], hipwidth:params[:hip31], thighwidth:params[:thigh31], raiselength:params[:raise31], hemwidth:params[:hem31], totallength:params[:length31], categorybottom_id:params[:id_of_category])
      JeansSize.create(sizename:"32", corsize:params[:cornum32], waistwidth:params[:waist32], hipwidth:params[:hip32], thighwidth:params[:thigh32], raiselength:params[:raise32], hemwidth:params[:hem32], totallength:params[:length32], categorybottom_id:params[:id_of_category])
      JeansSize.create(sizename:"33", corsize:params[:cornum33], waistwidth:params[:waist33], hipwidth:params[:hip33], thighwidth:params[:thigh33], raiselength:params[:raise33], hemwidth:params[:hem33], totallength:params[:length33], categorybottom_id:params[:id_of_category])
      JeansSize.create(sizename:"34", corsize:params[:cornum34], waistwidth:params[:waist34], hipwidth:params[:hip34], thighwidth:params[:thigh34], raiselength:params[:raise34], hemwidth:params[:hem34], totallength:params[:length34], categorybottom_id:params[:id_of_category])
      JeansSize.create(sizename:"35", corsize:params[:cornum35], waistwidth:params[:waist35], hipwidth:params[:hip35], thighwidth:params[:thigh35], raiselength:params[:raise35], hemwidth:params[:hem35], totallength:params[:length35], categorybottom_id:params[:id_of_category])
      JeansSize.create(sizename:"36", corsize:params[:cornum36], waistwidth:params[:waist36], hipwidth:params[:hip36], thighwidth:params[:thigh36], raiselength:params[:raise36], hemwidth:params[:hem36], totallength:params[:length36], categorybottom_id:params[:id_of_category])
    # elsif $category == "coat"
    #
    # elsif $category == "shoes"
    end
    redirect_to "/branddic"

  end

  def datalist  #본인이 올린 자료에 대해 게시판 형태로 선택할 수 있게 해주는

  end

  def selectform
  end
end
