<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>ethernet_bridge</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>7</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>to_app_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>to_app.V</originalName>
              <rtlName/>
              <coreName>AXI4Stream</coreName>
            </Obj>
            <bitwidth>81</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>from_eth_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>from_eth.V</originalName>
              <rtlName/>
              <coreName>AXI4Stream</coreName>
            </Obj>
            <bitwidth>73</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>from_app_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>from_app.V</originalName>
              <rtlName/>
              <coreName>AXI4Stream</coreName>
            </Obj>
            <bitwidth>81</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_4">
          <Value>
            <Obj>
              <type>1</type>
              <id>4</id>
              <name>to_eth_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>to_eth.V</originalName>
              <rtlName/>
              <coreName>AXI4Stream</coreName>
            </Obj>
            <bitwidth>73</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_5">
          <Value>
            <Obj>
              <type>1</type>
              <id>5</id>
              <name>mac_addr_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>op.V</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>48</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_6">
          <Value>
            <Obj>
              <type>1</type>
              <id>6</id>
              <name>observedAddress_out_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>observedAddress_out.V</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>48</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>0</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_7">
          <Value>
            <Obj>
              <type>1</type>
              <id>17</id>
              <name>mac_table_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>48</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>1</if_type>
          <array_size>256</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>7</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>18</id>
              <name>mac_addr_V_read</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>op.V</originalName>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>48</bitwidth>
          </Value>
          <oprand_edges>
            <count>2</count>
            <item_version>0</item_version>
            <item>48</item>
            <item>49</item>
          </oprand_edges>
          <opcode>read</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_delay>0.00</m_delay>
        </item>
        <item class_id_reference="9" object_id="_9">
          <Value>
            <Obj>
              <type>0</type>
              <id>19</id>
              <name>mac_addr_V_c42</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>mac_addr_V_c42_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>48</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>51</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_delay>0.00</m_delay>
        </item>
        <item class_id_reference="9" object_id="_10">
          <Value>
            <Obj>
              <type>0</type>
              <id>20</id>
              <name>mac_addr_V_c</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>mac_addr_V_c_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>48</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>52</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_delay>0.00</m_delay>
        </item>
        <item class_id_reference="9" object_id="_11">
          <Value>
            <Obj>
              <type>0</type>
              <id>42</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>ethernet_bridge_entr_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>4</count>
            <item_version>0</item_version>
            <item>54</item>
            <item>55</item>
            <item>56</item>
            <item>57</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_delay>1.75</m_delay>
        </item>
        <item class_id_reference="9" object_id="_12">
          <Value>
            <Obj>
              <type>0</type>
              <id>43</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>eth_to_app_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>10</count>
            <item_version>0</item_version>
            <item>59</item>
            <item>60</item>
            <item>61</item>
            <item>62</item>
            <item>63</item>
            <item>69</item>
            <item>70</item>
            <item>71</item>
            <item>296</item>
            <item>298</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_delay>0.00</m_delay>
        </item>
        <item class_id_reference="9" object_id="_13">
          <Value>
            <Obj>
              <type>0</type>
              <id>44</id>
              <name/>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>app_to_eth_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>13</count>
            <item_version>0</item_version>
            <item>65</item>
            <item>66</item>
            <item>67</item>
            <item>68</item>
            <item>72</item>
            <item>73</item>
            <item>74</item>
            <item>75</item>
            <item>76</item>
            <item>77</item>
            <item>78</item>
            <item>79</item>
            <item>297</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_delay>0.00</m_delay>
        </item>
        <item class_id_reference="9" object_id="_14">
          <Value>
            <Obj>
              <type>0</type>
              <id>45</id>
              <name/>
              <fileName>/home/user/galapagos/middleware/hls/network_bridge_ethernet/src/ethernet_bridge.cpp</fileName>
              <fileDirectory>../../../../middleware/hls/network_bridge_ethernet</fileDirectory>
              <lineNumber>281</lineNumber>
              <contextFuncName>ethernet_bridge</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="11" tracking_level="0" version="0">
                  <first>/home/user/galapagos/middleware/hls/network_bridge_ethernet</first>
                  <second class_id="12" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="13" tracking_level="0" version="0">
                      <first class_id="14" tracking_level="0" version="0">
                        <first>/home/user/galapagos/middleware/hls/network_bridge_ethernet/src/ethernet_bridge.cpp</first>
                        <second>ethernet_bridge</second>
                      </first>
                      <second>281</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_delay>0.00</m_delay>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_15">
          <Value>
            <Obj>
              <type>2</type>
              <id>50</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>1</content>
        </item>
        <item class_id_reference="16" object_id="_16">
          <Value>
            <Obj>
              <type>2</type>
              <id>53</id>
              <name>ethernet_bridge_entr</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:ethernet_bridge.entr&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_17">
          <Value>
            <Obj>
              <type>2</type>
              <id>58</id>
              <name>eth_to_app</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:eth_to_app&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_18">
          <Value>
            <Obj>
              <type>2</type>
              <id>64</id>
              <name>app_to_eth</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:app_to_eth&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_19">
          <Obj>
            <type>3</type>
            <id>46</id>
            <name>ethernet_bridge</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>7</count>
            <item_version>0</item_version>
            <item>18</item>
            <item>19</item>
            <item>20</item>
            <item>42</item>
            <item>43</item>
            <item>44</item>
            <item>45</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>30</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_20">
          <id>49</id>
          <edge_type>1</edge_type>
          <source_obj>5</source_obj>
          <sink_obj>18</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>51</id>
          <edge_type>1</edge_type>
          <source_obj>50</source_obj>
          <sink_obj>19</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>52</id>
          <edge_type>1</edge_type>
          <source_obj>50</source_obj>
          <sink_obj>20</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>54</id>
          <edge_type>1</edge_type>
          <source_obj>53</source_obj>
          <sink_obj>42</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>55</id>
          <edge_type>1</edge_type>
          <source_obj>18</source_obj>
          <sink_obj>42</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>56</id>
          <edge_type>1</edge_type>
          <source_obj>20</source_obj>
          <sink_obj>42</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>57</id>
          <edge_type>1</edge_type>
          <source_obj>19</source_obj>
          <sink_obj>42</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>59</id>
          <edge_type>1</edge_type>
          <source_obj>58</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>60</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>61</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>62</id>
          <edge_type>1</edge_type>
          <source_obj>20</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>63</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_32">
          <id>65</id>
          <edge_type>1</edge_type>
          <source_obj>64</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_33">
          <id>66</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_34">
          <id>67</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_35">
          <id>68</id>
          <edge_type>1</edge_type>
          <source_obj>19</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_36">
          <id>69</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_37">
          <id>70</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_38">
          <id>71</id>
          <edge_type>1</edge_type>
          <source_obj>9</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_39">
          <id>72</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_40">
          <id>73</id>
          <edge_type>1</edge_type>
          <source_obj>11</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_41">
          <id>74</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_42">
          <id>75</id>
          <edge_type>1</edge_type>
          <source_obj>13</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_43">
          <id>76</id>
          <edge_type>1</edge_type>
          <source_obj>14</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_44">
          <id>77</id>
          <edge_type>1</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_45">
          <id>78</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_46">
          <id>79</id>
          <edge_type>1</edge_type>
          <source_obj>17</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_47">
          <id>296</id>
          <edge_type>4</edge_type>
          <source_obj>42</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_48">
          <id>297</id>
          <edge_type>4</edge_type>
          <source_obj>42</source_obj>
          <sink_obj>44</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_49">
          <id>298</id>
          <edge_type>4</edge_type>
          <source_obj>42</source_obj>
          <sink_obj>43</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_50">
        <mId>1</mId>
        <mTag>ethernet_bridge</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>46</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>2</mMinLatency>
        <mMaxLatency>-1</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_51">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="25" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_52">
              <type>0</type>
              <name>ethernet_bridge_entr_U0</name>
              <ssdmobj_id>42</ssdmobj_id>
              <pins class_id="27" tracking_level="0" version="0">
                <count>3</count>
                <item_version>0</item_version>
                <item class_id="28" tracking_level="1" version="0" object_id="_53">
                  <port class_id="29" tracking_level="1" version="0" object_id="_54">
                    <name>mac_addr_V</name>
                    <dir>3</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="30" tracking_level="1" version="0" object_id="_55">
                    <type>0</type>
                    <name>ethernet_bridge_entr_U0</name>
                    <ssdmobj_id>42</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_56">
                  <port class_id_reference="29" object_id="_57">
                    <name>mac_addr_V_out</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_55"/>
                </item>
                <item class_id_reference="28" object_id="_58">
                  <port class_id_reference="29" object_id="_59">
                    <name>mac_addr_V_out1</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_55"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_60">
              <type>0</type>
              <name>eth_to_app_U0</name>
              <ssdmobj_id>43</ssdmobj_id>
              <pins>
                <count>7</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_61">
                  <port class_id_reference="29" object_id="_62">
                    <name>from_eth_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_63">
                    <type>0</type>
                    <name>eth_to_app_U0</name>
                    <ssdmobj_id>43</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_64">
                  <port class_id_reference="29" object_id="_65">
                    <name>to_app_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
                <item class_id_reference="28" object_id="_66">
                  <port class_id_reference="29" object_id="_67">
                    <name>mac_address_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
                <item class_id_reference="28" object_id="_68">
                  <port class_id_reference="29" object_id="_69">
                    <name>observedAddress_out_s</name>
                    <dir>3</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
                <item class_id_reference="28" object_id="_70">
                  <port class_id_reference="29" object_id="_71">
                    <name>state_V_1</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
                <item class_id_reference="28" object_id="_72">
                  <port class_id_reference="29" object_id="_73">
                    <name>dest_V</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
                <item class_id_reference="28" object_id="_74">
                  <port class_id_reference="29" object_id="_75">
                    <name>app_packet_out_last_s</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_76">
              <type>0</type>
              <name>app_to_eth_U0</name>
              <ssdmobj_id>44</ssdmobj_id>
              <pins>
                <count>11</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_77">
                  <port class_id_reference="29" object_id="_78">
                    <name>from_app_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_79">
                    <type>0</type>
                    <name>app_to_eth_U0</name>
                    <ssdmobj_id>44</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_80">
                  <port class_id_reference="29" object_id="_81">
                    <name>to_eth_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_82">
                  <port class_id_reference="29" object_id="_83">
                    <name>src_mac_address_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_84">
                  <port class_id_reference="29" object_id="_85">
                    <name>eth_dst_src_V</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_86">
                  <port class_id_reference="29" object_id="_87">
                    <name>state_V</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_88">
                  <port class_id_reference="29" object_id="_89">
                    <name>app_packet_in_last_V</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_90">
                  <port class_id_reference="29" object_id="_91">
                    <name>dest_mac_address_V</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_92">
                  <port class_id_reference="29" object_id="_93">
                    <name>app_packet_in_tkeep_s</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_94">
                  <port class_id_reference="29" object_id="_95">
                    <name>app_packet_in_data_V</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_96">
                  <port class_id_reference="29" object_id="_97">
                    <name>app_packet_in_tdest_s</name>
                    <dir>3</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
                <item class_id_reference="28" object_id="_98">
                  <port class_id_reference="29" object_id="_99">
                    <name>mac_table_V</name>
                    <dir>2</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_79"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="31" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="32" tracking_level="1" version="0" object_id="_100">
              <type>1</type>
              <name>mac_addr_V_c</name>
              <ssdmobj_id>20</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>48</bitwidth>
              <source class_id_reference="28" object_id="_101">
                <port class_id_reference="29" object_id="_102">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_55"/>
              </source>
              <sink class_id_reference="28" object_id="_103">
                <port class_id_reference="29" object_id="_104">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_63"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_105">
              <type>1</type>
              <name>mac_addr_V_c42</name>
              <ssdmobj_id>19</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>48</bitwidth>
              <source class_id_reference="28" object_id="_106">
                <port class_id_reference="29" object_id="_107">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_55"/>
              </source>
              <sink class_id_reference="28" object_id="_108">
                <port class_id_reference="29" object_id="_109">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_79"/>
              </sink>
            </item>
          </channel_list>
          <net_list class_id="33" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="34" tracking_level="1" version="0" object_id="_110">
      <states class_id="35" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_111">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_112">
              <id>18</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_113">
              <id>19</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_114">
              <id>20</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_115">
              <id>42</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_116">
          <id>2</id>
          <operations>
            <count>2</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_117">
              <id>43</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_118">
              <id>44</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_119">
          <id>3</id>
          <operations>
            <count>24</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_120">
              <id>21</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_121">
              <id>22</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_122">
              <id>23</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_123">
              <id>24</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_124">
              <id>25</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_125">
              <id>26</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_126">
              <id>27</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_127">
              <id>28</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_128">
              <id>29</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_129">
              <id>30</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_130">
              <id>31</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_131">
              <id>32</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_132">
              <id>33</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_133">
              <id>34</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_134">
              <id>35</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_135">
              <id>36</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_136">
              <id>37</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_137">
              <id>38</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_138">
              <id>39</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_139">
              <id>40</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_140">
              <id>41</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_141">
              <id>43</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_142">
              <id>44</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_143">
              <id>45</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_144">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="41" tracking_level="0" version="0">
            <id>0</id>
            <sop class_id="42" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="43" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_145">
          <inState>2</inState>
          <outState>3</outState>
          <condition>
            <id>1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_146">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>app_to_eth_U0 (app_to_eth)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>FF</first>
              <second>310</second>
            </item>
            <item>
              <first>LUT</first>
              <second>125</second>
            </item>
          </second>
        </item>
        <item>
          <first>eth_to_app_U0 (eth_to_app)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>138</second>
            </item>
            <item>
              <first>LUT</first>
              <second>133</second>
            </item>
          </second>
        </item>
        <item>
          <first>ethernet_bridge_entr_U0 (ethernet_bridge_entr)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>29</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>mac_addr_V_c42_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>48</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>96</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>60</second>
            </item>
          </second>
        </item>
        <item>
          <first>mac_addr_V_c_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>48</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>96</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>60</second>
            </item>
          </second>
        </item>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>eth_to_app_U0_ap_start</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>app_to_eth_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>eth_to_app_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>ethernet_bridge_entr_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>app_to_eth_U0 (app_to_eth)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>44</item>
          </second>
        </item>
        <item>
          <first>eth_to_app_U0 (eth_to_app)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>43</item>
          </second>
        </item>
        <item>
          <first>ethernet_bridge_entr_U0 (ethernet_bridge_entr)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>42</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>mac_addr_V_c42_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>99</item>
          </second>
        </item>
        <item>
          <first>mac_addr_V_c_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>89</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>7</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>18</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>19</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>20</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>42</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>43</first>
        <second>
          <first>1</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>44</first>
        <second>
          <first>1</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>45</first>
        <second>
          <first>2</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>46</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>2</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_147">
        <region_name>ethernet_bridge</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>46</item>
        </basic_blocks>
        <nodes>
          <count>28</count>
          <item_version>0</item_version>
          <item>18</item>
          <item>19</item>
          <item>20</item>
          <item>21</item>
          <item>22</item>
          <item>23</item>
          <item>24</item>
          <item>25</item>
          <item>26</item>
          <item>27</item>
          <item>28</item>
          <item>29</item>
          <item>30</item>
          <item>31</item>
          <item>32</item>
          <item>33</item>
          <item>34</item>
          <item>35</item>
          <item>36</item>
          <item>37</item>
          <item>38</item>
          <item>39</item>
          <item>40</item>
          <item>41</item>
          <item>42</item>
          <item>43</item>
          <item>44</item>
          <item>45</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="59" tracking_level="0" version="0">
      <count>6</count>
      <item_version>0</item_version>
      <item class_id="60" tracking_level="0" version="0">
        <first>80</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>19</item>
        </second>
      </item>
      <item>
        <first>84</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>20</item>
        </second>
      </item>
      <item>
        <first>88</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>18</item>
        </second>
      </item>
      <item>
        <first>94</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>43</item>
          <item>43</item>
        </second>
      </item>
      <item>
        <first>111</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>44</item>
          <item>44</item>
        </second>
      </item>
      <item>
        <first>136</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>42</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="62" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>mac_addr_V_c42_fu_80</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>19</item>
        </second>
      </item>
      <item>
        <first>mac_addr_V_c_fu_84</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>20</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>3</count>
      <item_version>0</item_version>
      <item>
        <first>StgValue_7_ethernet_bridge_entr_fu_136</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>42</item>
        </second>
      </item>
      <item>
        <first>grp_app_to_eth_fu_111</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>44</item>
          <item>44</item>
        </second>
      </item>
      <item>
        <first>grp_eth_to_app_fu_94</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>43</item>
          <item>43</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>1</count>
      <item_version>0</item_version>
      <item>
        <first>mac_addr_V_read_read_fu_88</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>18</item>
        </second>
      </item>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="64" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>144</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>19</item>
        </second>
      </item>
      <item>
        <first>150</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>20</item>
        </second>
      </item>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>mac_addr_V_c42_reg_144</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>19</item>
        </second>
      </item>
      <item>
        <first>mac_addr_V_c_reg_150</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>20</item>
        </second>
      </item>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="65" tracking_level="0" version="0">
      <count>6</count>
      <item_version>0</item_version>
      <item class_id="66" tracking_level="0" version="0">
        <first>from_app_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>44</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>from_eth_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>43</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>mac_addr_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>read</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>18</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>observedAddress_out_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>43</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>to_app_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>43</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>to_eth_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>44</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="67" tracking_level="0" version="0">
      <count>5</count>
      <item_version>0</item_version>
      <item class_id="68" tracking_level="0" version="0">
        <first>1</first>
        <second>AXI4Stream</second>
      </item>
      <item>
        <first>2</first>
        <second>AXI4Stream</second>
      </item>
      <item>
        <first>3</first>
        <second>AXI4Stream</second>
      </item>
      <item>
        <first>4</first>
        <second>AXI4Stream</second>
      </item>
      <item>
        <first>17</first>
        <second>RAM</second>
      </item>
    </port2core>
    <node2core>
      <count>2</count>
      <item_version>0</item_version>
      <item>
        <first>19</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>20</first>
        <second>FIFO</second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>