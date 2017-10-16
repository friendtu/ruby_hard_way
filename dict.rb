#module EX39
class Dict
    def initialize(size=256,default=nil)
        @buf=[]
        @default=default
        (0..size).each do
            @buf.push([])
        end
    end

    def get_bucket(key)
        @buf[key.hash % @buf.length]
    end
    
    def get(key)
        bucket=get_bucket(key)
        kv=bucket.find { |kv|kv[0]==key}
        if(kv) 
            return kv[1]
        else
            return @default
        end
    end

    def set(key,value)
        bucket=get_bucket(key)
        kv=bucket.find {|kv| kv[0]==key}
        if (!kv)
            bucket.push([key,value])
        else
            kv[1]=value
        end
    end

    def delete(key)
        bucket=get_bucket(key)
        index=bucket.index {|kv| kv[0]==key }
        puts "index: #{index}"
        bucket.delete_at(index)
    end

    def list
        @buf.each do |bucket|
            if(bucket)
                bucket.each { |kv| puts "#{kv[0]},#{kv[1]}"}
            end
        end
    end
end
#end

